from __future__ import print_function

import invariant_finder
import pddl
import timers


DEBUG = False


def expand_group(group, task, reachable_facts):
    result = []
    for fact in group:
        try:
            pos = list(fact.args).index("?X")
        except ValueError:
            result.append(fact)
        else:
            # NOTE: This could be optimized by only trying objects of the correct
            #       type, or by using a unifier which directly generates the
            #       applicable objects. It is not worth optimizing this at this stage,
            #       though.
            for obj in task.objects:
                newargs = list(fact.args)
                newargs[pos] = obj.name
                atom = pddl.Atom(fact.predicate, newargs)
                if atom in reachable_facts:
                    result.append(atom)
    return result

def instantiate_groups(groups, task, reachable_facts):
    return [expand_group(group, task, reachable_facts) for group in groups]

class GroupCoverQueue:
    def __init__(self, groups, partial_encoding):
        self.partial_encoding = partial_encoding
        if groups:
            self.max_size = max([len(group) for group in groups])
            self.groups_by_size = [[] for i in range(self.max_size + 1)]
            self.groups_by_fact = {}
            for group in groups:
                group = set(group) # Copy group, as it will be modified.
                self.groups_by_size[len(group)].append(group)
                for fact in group:
                    self.groups_by_fact.setdefault(fact, []).append(group)
            self._update_top()
        else:
            self.max_size = 0
    def __bool__(self):
        return self.max_size > 1
    __nonzero__ = __bool__
    def pop(self):
        result = list(self.top) # Copy; this group will shrink further.
        if self.partial_encoding:
            for fact in result:
                for group in self.groups_by_fact[fact]:
                    group.remove(fact)
        self._update_top()
        return result
    def _update_top(self):
        while self.max_size > 1:
            max_list = self.groups_by_size[self.max_size]
            while max_list:
                candidate = max_list.pop()
                if len(candidate) == self.max_size:
                    self.top = candidate
                    return
                self.groups_by_size[len(candidate)].append(candidate)
            self.max_size -= 1

# ALVARO: Allows for partitionings with less FDR variables 
class EssentialGroupCoverQueue:
    def __init__(self, groups, partial_encoding):
        self.partial_encoding = partial_encoding
        if groups:
            self.max_size = 0
            self.max_size_essential = 0
            self.groups_by_size = [[] for i in range( max([len(group) for group in groups]) + 1)]
            self.groups_by_size_essential = [[] for i in range( max([len(group) for group in groups]) + 1)]
            self.groups_by_fact = {}
            copiedGroups = []
            for group in groups:
                group = set(group) # Copy group, as it will be modified.
                copiedGroups.append(group)
                for fact in group:
                    self.groups_by_fact.setdefault(fact, []).append(group)

            for group in copiedGroups: 
                essential = False
                for fact in group: 
                    if len(self.groups_by_fact[fact]) == 1:
                        essential=True
                        break
                if essential:
                    #print ("ESSENTIAL: ", group) 
                    self.groups_by_size_essential [len(group)].append(group)
                    self.max_size_essential = max(self.max_size_essential, len(group))
                else:
                    #print ("PRESCINDIBLE: ", group) 
                    self.groups_by_size [len(group)].append(group)
                    self.max_size = max(self.max_size, len(group))
            #print("MAX_SIZE_ESSENTIAL: ", self.max_size_essential)
            #print("MAX_SIZE_PRESCINDIBLE: ", self.max_size)
            self._update_top()
        else:
            self.max_size = 0
            self.max_size_essential = 0
    def __bool__(self):
        return self.max_size > 1 or self.max_size_essential > 1
    __nonzero__ = __bool__
    def pop(self):
        result = list(self.top) # Copy; this group will shrink further.
        if self.partial_encoding:
            for fact in result:
                for group in self.groups_by_fact[fact]:
                    group.remove(fact)
        self._update_top()
        return result
    def _update_top(self):
        while self.max_size_essential > 1:
            max_list = self.groups_by_size_essential[self.max_size_essential]
            #print("MAX_LIST", max_list)
            while max_list:
                candidate = max_list.pop()
                if len(candidate) == self.max_size_essential:
                    self.top = candidate
                    #print("SELECTED: ", self.top)
                    return
                self.groups_by_size_essential[len(candidate)].append(candidate)
            self.max_size_essential -= 1

        while self.max_size > 1:
            max_list = self.groups_by_size[self.max_size]
            while max_list:
                candidate = max_list.pop()
                if len(candidate) == self.max_size:
                    self.top = candidate
                    #print("SELECTED: ", self.top)
                    return
                self.groups_by_size[len(candidate)].append(candidate)
            self.max_size -= 1

def choose_groups(groups, reachable_facts, partial_encoding=True):
    queue = EssentialGroupCoverQueue(groups, partial_encoding=partial_encoding)
    uncovered_facts = reachable_facts.copy()
    result = []
    while queue:
        group = queue.pop()
        uncovered_facts.difference_update(group)
        result.append(group)
    print(len(uncovered_facts), "uncovered facts")
    result += [[fact] for fact in uncovered_facts]
    return result

def build_translation_key(groups):
    group_keys = []
    for group in groups:
        group_key = [str(fact) for fact in group]
        if len(group) == 1:
            group_key.append(str(group[0].negate()))
        else:
            group_key.append("<none of those>")
        group_keys.append(group_key)
    return group_keys

def collect_all_mutex_groups(groups, atoms):
    # NOTE: This should be functionally identical to choose_groups
    # when partial_encoding is set to False. Maybe a future
    # refactoring could take that into account.
    all_groups = []
    uncovered_facts = atoms.copy()
    for group in groups:
        uncovered_facts.difference_update(group)
        all_groups.append(group)
    all_groups += [[fact] for fact in uncovered_facts]
    return all_groups

def sort_groups(groups):
    return sorted(sorted(group) for group in groups)

def compute_groups(task, atoms, reachable_action_params, partial_encoding=True):
    groups = invariant_finder.get_groups(task, reachable_action_params)

    with timers.timing("Instantiating groups"):
        groups = instantiate_groups(groups, task, atoms)

    # Sort here already to get deterministic mutex groups.
    groups = sort_groups(groups)
    # TODO: I think that collect_all_mutex_groups should do the same thing
    #       as choose_groups with partial_encoding=False, so these two should
    #       be unified.
    with timers.timing("Collecting mutex groups"):
        mutex_groups = collect_all_mutex_groups(groups, atoms)
    with timers.timing("Choosing groups", block=True):
        groups = choose_groups(groups, atoms, partial_encoding=partial_encoding)
    groups = sort_groups(groups)
    with timers.timing("Building translation key"):
        translation_key = build_translation_key(groups)

    if DEBUG:
        for group in groups:
            if len(group) >= 2:
                print("{%s}" % ", ".join(map(str, group)))

    return groups, mutex_groups, translation_key
