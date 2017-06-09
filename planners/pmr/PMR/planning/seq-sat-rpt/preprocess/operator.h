#ifndef OPERATOR_H
#define OPERATOR_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <list>
#include <set>
#include "variable.h"
using namespace std;

class H2Mutexes;

class Operator {
public:
  class Prevail {
    public:
    Variable *var;
    int prev;
  Prevail(Variable *v, int p) : var(v), prev(p) {}
    
    inline void remove_unreachable_facts(){
      //cout << "Prevail: " << var->get_fact_name(prev) << endl;
      prev = var->get_new_id(prev);
      //cout << "NOT PROBLEM" << endl;
    }
  };
  class EffCond {
  public:
    Variable *var;
    int cond;
  EffCond(Variable *v, int c) : var(v), cond(c) {}
    //return true if the condition is reachable 
    inline bool remove_unreachable_facts(){
      if(var->is_reachable(cond)){
	cond = var->get_new_id(cond);
	return true;
      }else{
	return false;
      }
    }
  };
  class PrePost {
  public:
    Variable *var;
    int pre, post;
    bool is_conditional_effect;
    vector<EffCond> effect_conds;
  PrePost(Variable *v, int pr, int po) : var(v), pre(pr), post(po) {
      is_conditional_effect = false;
    }
  PrePost(Variable *v, vector<EffCond> ecs, int pr, int po) : var(v), pre(pr),
      post(po), effect_conds(ecs) {is_conditional_effect = true; }


    inline void remove_unreachable_facts(){
      if(pre != -1)
	pre = var->get_new_id(pre);
      post = var->get_new_id(post);
      if(is_conditional_effect){
	vector<EffCond> new_conds;
	for(int i = 0; i < effect_conds.size(); ++i){
	  if(effect_conds[i].remove_unreachable_facts()){
	    new_conds.push_back(effect_conds[i]);
	  }
	}
	effect_conds.swap(new_conds);
	if(effect_conds.empty()){
	  is_conditional_effect = false;
	}
      }
    }    
  };


private:
    string name;
    vector<Prevail> prevail;    // var, val
    vector<PrePost> pre_post; // var, old-val, new-val
    int cost;
    bool spurious;

    std::vector<std::pair<int, int> > augmented_preconditions;
    std::vector<std::pair<int, int> > potential_preconditions;

public:
    Operator(istream &in, const vector<Variable *> &variables);

    void strip_unimportant_effects();
    bool is_redundant() const;

    void dump() const;
    int get_encoding_size() const;
    void generate_cpp_input(ofstream &outfile) const;
    int get_cost() const {return cost; }
    string get_name() const {return name; }
    inline void set_spurious(){
      spurious = true;
    }
    inline const vector<Prevail> &get_prevail() const {return prevail; }
    inline const vector<PrePost> &get_pre_post() const {return pre_post; }
    inline const  std::vector<std::pair<int, int> > & get_augmented_preconditions() const{
      return augmented_preconditions;
    }

    inline const  std::vector<std::pair<int, int> > & get_potential_preconditions() const {
      return potential_preconditions;
    }
    

    void remove_ambiguity(const H2Mutexes & h2);

    void remove_unreachable_facts();
};

extern void strip_operators(vector<Operator> &operators);

#endif
