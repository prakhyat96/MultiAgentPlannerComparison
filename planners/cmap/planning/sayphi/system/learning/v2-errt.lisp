;;; Functions that have been changed by Daniel from search.lisp and some new ones for ERRT

(in-package "COMMON-LISP-USER")
(defvar *trace-errt-p* nil)
(defvar *break-errt-p* nil)
(defvar *distance-computation* nil)
(defvar *modified-probset* nil)
(setf *h-max-layers* 10000)
(defvar *print-sol-p* nil)
(defvar *run-plain-sayphi-p* t)
(defvar *expand-breadth-first-search-p* t)
(defvar *start-from-end-p* nil)
(defvar *breadth-first-node-limit* 100)

;;; ***************************************************************************************
;;;        Main interface functions
;;; ***************************************************************************************

;; modify-problem: add-goal, modify-state, from-probset (needs :modified-probset prefix definition)
;; max-relaxations: number of times it will try to relax the unsolvable problem to find a solvable one to reuse from
;; max-modifications: number of times it will complicate the problem, given that problems are randomly complicated
;; number-repetitions: number of experiments of ERRT for each configuration, given that it is stochastic
;; max-goals: how many goals are added eveytime I complicate a problem
;; initial-solutions: list of previous solutions to all problems in the probset specified by prefix. Solutions can be either lists of actions or paths to files with solutions
;; if start-with-subgoal=t, we start by solving a simpler problem (or until one such simple problem can be solved) and then we solve the one. We do this a maximum of max-starts
(defun errt-runset (&key (domain "driverlog-num") (domain-file "driverlogNum.pddl") (prefix "pfile")
		    (sayphi-algorithm 'enforced-hill-climbing) (algorithm 'errt-plan) (helpful *say-helpful*)
		    (p (list 0.1 0.3 0.6 0.9 0.0)) (r (list 0.1 0.3 0.6 0.9 0.0))
		    (number-repetitions 5) (max-relaxations 20) (max-modifications 5) (max-goals 1) (modify-problem 'add-goal) (start-with-subgoal nil) (max-starts 1)
		    (modified-probset-prefix "pfile-") (initial-solutions nil) (say-solution-format :list) (say-timeout 300) (say-output-level 0))
  (setf *say-solution-format* say-solution-format)
  (setf *say-timeout* say-timeout)
  (setf *say-output-level* say-output-level)
  (runset domain domain-file
	  :algorithm sayphi-algorithm
	  :probs-prefix prefix
	  :timeout say-timeout
	  :helpful helpful
	  :output-level say-output-level
	  :search-options `((:use-errt t) (:number-repetitions ,number-repetitions) (:algorithm ,algorithm)
			    (:max-modifications ,max-modifications) (:max-goals ,max-goals) (:modified-probset ,modified-probset-prefix)
			    (:modify-problem ,modify-problem)  (:max-relaxations ,max-relaxations)
			    ;; (:rrt-random-state ,#'rrt-random-state) (:errt-plan-distance ,#'errt-plan-distance)
			    (:children-sort h-value) (:start-with-subgoal ,start-with-subgoal) (:max-starts ,max-starts)
			    (:p ,p) (:r ,r) (:initial-solutions ,initial-solutions))))

(defun errt-plan (domain problem solution &key (domain-file "domain.pddl") (algorithm 'errt-plan) (helpful *say-helpful*)
		  (p 0.3) (r 0.6) (say-timeout 300) (say-output-level 0) (load-domain-p t) (load-problem-p t))
  (declare (special *remove-static-preds* *say-timeout* *say-output-level* *say-helpful*))
  (if load-domain-p (say-domain domain domain-file))
  (if load-problem-p (prob problem))
  (let* ((sol (if (listp solution) solution (solution-path solution)))
	 (partial-plan (build-partial-plan sol))
	 (actions (if partial-plan (partial-plan-actions partial-plan)))
	 (goal-regression (if partial-plan (compute-goal-regression partial-plan sol))))
    (if *remove-static-preds* (setq goal-regression (remove-static-preds goal-regression)))
    (setf *say-timeout* say-timeout)
    (setf *say-output-level* say-output-level)
;;     (dotimes (i (length actions))
;;       (push (car (aref actions i)) just-actions))
;;     (setq just-actions (reverse just-actions))
    (plan :algorithm algorithm :search-options `((:children-sort h-value) (:helpful ,helpful) (:p ,p) (:r ,r) (:actions ,actions) (:goal-regression ,goal-regression)))))

;; This is the version on top of EHC
(defun errt-plan (init-node h-function cost-fn search-options &optional (problem *current-problem*))
  (declare (ignore cost-fn))
  (let* ((old-goals (problem-goals *current-problem*))
	 (goals-list (pp-state old-goals 'list))
	 ;;	 (open-nodes nil) (open-children nil)
	 (ehc-node init-node) (next-node nil) (visited (make-hash-table)) (number-visited 0)
	 (nearest nil) (expanded nil)
	 (pointer-goal-regression 0)
	 ;; 	 (target nil)
	 ;;	(extend (car (find-argument search-options :extend)))
;;	 (rrt-random-state (search-option-value :rrt-random-state search-options))
;;	 (errt-plan-distance (search-option-value :errt-plan-distance search-options))
	 (p (search-option-value :p search-options))
	 (r (search-option-value :r search-options))
	 ;; 	(previous-state (pp-state (snode-state init-node) 'list))
;; 	 (use-rules-p (search-option-value :use-rules-p search-options))
	 (lookahead (search-option-value :lookahead search-options))
	 (helpful (search-option-value :helpful search-options))
	 (target-selector nil) ;; (search-option-value :target-selector search-options))
	 (actions (cdr (butlast (coerce (search-option-value :actions search-options) 'list)))) ;; I get rid of a_inf and a_0
	 (reversed-actions (if *start-from-end-p* (reverse actions) actions))							;; this is for action-reuse
	 (number-actions (length actions))
	 (goal-regression (search-option-value :goal-regression search-options))
	 ;;	 (partial-plan (if *previous-solution* (build-partial-plan *previous-solution*)))
	 ;; 	 (actions (if partial-plan (partial-plan-actions partial-plan)))
	 ;; 	 (goal-regression (if partial-plan (compute-goal-regression partial-plan *previous-solution*)))
	 (tree (list init-node)) (random 0) (standard-behavior-p nil)
	 (current-h 0) (current-h-plus 0) (better-h-node nil) (discrete-h (not (is-metric-domain))))
    (setf *distance-computation* (make-hash-table :test #'equal))
    (setf *computation-avoided* 0)
    (if *trace-errt-p* (format t "~%~4$: Before evaluating root" (errt-time)))
    (errt-plan-distance ehc-node old-goals h-function 0)
    ;;     (cond (*trace-mem* 
    ;; 	   (say-consed-bytes :mem-per-node (store-h-extras node h-function t))
    ;; 	   (write-node-mem-info 'errt))
    ;; 	  (t (store-h-extras node h-function t)))
    ;;     (setf (gethash (cons (snode-number node) 0) *distance-computation*) (cons (snode-h-value node) (snode-relaxed-plan node)))
    (if *trace-errt-p* (format t "~%~4$: After evaluating root" (errt-time)))
    ;; for inspection purposes
    (if *trace-errt-p* (setf *errt-tree* tree))
    (setf current-h (snode-h-value ehc-node))
    (setf current-h-plus (snode-h-plus ehc-node))
    ;; it can be either :ehc, :action-reuse or :goal-reuse. Once a new node in a branch is labeled as :action/goal-reuse, all descendants will inherit that
    ;; label. Now, we are only using it for deciding to which nodes we can return when the current ehc node is closed. We cannot backtrack to nodes that are only ehc nodes
    (setf (getf (snode-plist ehc-node) :branch-type) :ehc)
;;     (when (and use-rules-p *rete-root-node*)
;;       (push-to-rete-goals)
;;       (push-to-rete-object-types)
;;       (push-to-rete-state init-node t))
    ;;       (push-to-rete-state nil previous-state))
    ;;     (setf open-nodes (list node))
    (do* ((stop-this (stop-search ehc-node problem) (stop-search ehc-node problem)))
	 (stop-this (when-stop (cdr stop-this)
			       (if (eq (cdr stop-this) :goals-reached)
				   ehc-node
				   (errt-nearest tree old-goals h-function 0))
			       problem))
      (trace-search-extras (snode-number ehc-node))
      (setq random (random 1.0))
      (setq target-selector (cond ((< random p) :ehc)
				  ((< random (+ r p))
				   ;; it there are still actions to be applied from previous plan, then I try to use them. Otherwise, I revert to EHC for efficiency
				   :action-reuse)
				  ;; this is wrong, since it might find another node above in the tree where it can reuse an action
				  ;; 				   ;; it there are still actions to be applied from previous plan, then I try to use them. Otherwise, I revert to EHC for efficiency
				  ;; 				   (if (< (snode-depth ehc-node) number-actions) :action-reuse :ehc))
				  (t :goal-reuse)))
      (if *trace-errt-p* (format t "~2%~4$: Target-selector ~a" (errt-time) target-selector))
      (multiple-value-bind (target index)
	  ;;	   (max (snode-depth node) pointer-goal-regression)
	  (errt-choose-target goals-list p r goal-regression target-selector actions pointer-goal-regression number-actions)
	(if *trace-errt-p* (format t "~%~4$: After choosing target" (errt-time)))
	;;	(setf (problem-goals *current-problem*) target)
	(setq nearest (if (or (eq target-selector :ehc) (eq target-selector :action-reuse)) ehc-node (errt-nearest tree target h-function index)))
	;; 	(if (eq target-selector :action-reuse)
	;; 	    (setf (getf (snode-plist nearest) :nearest-used) t))
	(cond ((and (zerop (snode-h-value nearest)) (not (zerop index))) ;; if the selected prior target is true in one node, I do not need to do nothing
	       (if *trace-errt-p* (format t "~%~4$: Setting goal-reuse pointer to ~d" (errt-time) (max pointer-goal-regression index)))
	       (setq pointer-goal-regression (max pointer-goal-regression index)))
	      (nearest
	       (if *trace-errt-p* (my-print-node nearest "Nearest"))
	       ;; 	       (if use-rules-p (prune-by-rules nearest))
	       (unless (eq target-selector :action-reuse)
		 (errt-expand-node nearest tree target-selector h-function helpful lookahead index)
		 ;; 	(if (not (snode-expanded nearest)) (errt-expand-state nearest :helpful (if (eq target-selector :action-reuse) nil helpful) :target-selector target-selector))
		 (if *trace-errt-p* (format t "~%~4$: After expanding nearest" (errt-time)))
		 ;;	(print-search-node nearest nil)
		 (my-print-children nearest))
	       (setq better-h-node (cond ((snode-closed nearest)
					  ;; 					  (setq tree (remove nearest tree))
					  ;; 					  (when (eq nearest ehc-node)
					  ;; 					    (setf (problem-goals *current-problem*) old-goals)
					  ;; 					    (errt-plan-distance (snode-parent ehc-node) old-goals h-function 0)
					  ;; 					    (setf (problem-goals *current-problem*) target)
					  ;; 					    (setq current-h (snode-h-value (snode-parent ehc-node)))
					  ;; 					    (setq current-h-plus (snode-h-plus (snode-parent ehc-node)))
					  ;; 					    (setq ehc-node (snode-parent ehc-node)))
					  nil)
					 ((eq target-selector :action-reuse)
					  ;;  (setq current-node (choose-next-node nearest target-selector (list nearest) target index h-function reversed-actions p r 'errt-plan
					  ;;  				       current-h current-h-plus discrete-h number-actions helpful))
					  ;; 					  (if (snode-p current-node)
					  ;; 					      current-node
;; 					  (format t "~%Before checking applicability")
;; 					  (pp-errt-tree tree)
					  (setq better-h-node (choose-next-node nearest target-selector
										(my-sort tree #'(lambda (x y)
												  (let ((pointer-x (or (getf (snode-plist x) :checked-applicability) 0))
													(pointer-y (or (getf (snode-plist y) :checked-applicability) 0)))
												    (> pointer-x pointer-y))))
										target index h-function reversed-actions p r 'errt-plan current-h current-h-plus discrete-h
										number-actions helpful))
;; 					  (format t "~%After checking applicability")
;; 					  (pp-errt-tree tree)
					  (cond ((eq better-h-node 'no-intersection)
						 ;; if in action-reuse we find no intersection, we apply EHC in the best node of the tree that was expanded with action-reuse
						 (setq nearest (find-best-in-tree tree :action-reuse))
						 (my-print-node nearest "Change in action-reuse to")
						 (cond (nearest
							(setq target-selector :ehc)
							(errt-expand-node nearest tree target-selector h-function helpful lookahead index)
							;; 	(if (not (snode-expanded nearest))
							;;	    (errt-expand-state nearest :helpful (if (eq target-selector :action-reuse) nil helpful) :target-selector target-selector))
							(if *trace-errt-p* (format t "~%~4$: After expanding nearest" (errt-time)))
							(my-print-children nearest)
							(choose-next-node nearest target-selector tree target index h-function reversed-actions p r 'errt-plan
									  current-h current-h-plus discrete-h number-actions helpful))
						       (t better-h-node)))
						(t better-h-node)))
					 ;; If we do not find an intersection in action-reuse, we change to EHC. It allows to set p=0 (when r_a>0)
					 ;; 					  (cond ((eq better-h-node 'change-ehc)
					 ;; 						 (cond ((>= r 0.1)
					 ;; 							(incf p 0.1)
					 ;; 							(decf r 0.1))
					 ;; 						       ((> r 0)
					 ;; 							(incf p r)
					 ;; 							(setq r 0))
					 ;; 						       (t nil))
					 ;; 						 (if *trace-errt-p* (format t "~%~4$: Changing p: ~1$ and r: ~1$" (errt-time) p r))
					 ;; 						 'no-intersection)
					 ;; 						(t better-h-node)))
					 (t (choose-next-node nearest target-selector tree target index h-function reversed-actions p r 'errt-plan
							      current-h current-h-plus discrete-h number-actions helpful))))
	       (if *trace-errt-p* (format t "~%~4$: After choosing next node" (errt-time)))
	       (if *trace-errt-p*
		   (format t "~% better-h-node: ~a, expanded-all: ~a, all-closed-p: ~a" (if (snode-p better-h-node) (snode-number better-h-node) better-h-node)
			   (if nearest (getf (snode-plist nearest) :expanded-non-helpful)) (if nearest (every #'snode-closed (snode-children nearest)))))
	       ;; I close nodes when all children have been expanded and all are closed (the distance to the main goal is infinite)
	       (when (and (not (snode-p better-h-node)) nearest (getf (snode-plist nearest) :expanded-non-helpful) (every #'snode-closed (snode-children nearest)))
		 (my-print-node nearest "ERRT-PLAN Closing")
		 (setf (snode-closed nearest) t)
		 (setq tree (remove nearest tree))
		 (when (and (eq nearest ehc-node) (setq ehc-node (find-best-in-tree tree)))
		   ;; 		   (setq ehc-node (snode-parent ehc-node)))
		   ;;		   (setf (problem-goals *current-problem*) old-goals)
		   (errt-plan-distance ehc-node old-goals h-function 0)
		   ;;		   (setf (problem-goals *current-problem*) target)
		   (setq current-h (snode-h-value ehc-node))
		   (setq current-h-plus (snode-h-plus ehc-node)))
		 nil)
	       (cond (ehc-node
		      (my-print-node better-h-node "Selected")
		      ;; so that it does not try to reuse all over again the same action
		      ;;       (if (or (eq (getf (snode-plist node) :expansion-reason) :reuse-closed)
		      ;; 	      (eq (getf (snode-plist node) :expansion-reason) :reuse))
		      ;; 	  (setq actions (remove-if #'(lambda (action) (eq (car action) (gaction-planaction (snode-applied-action better-h-node)))) actions)))

		      ;; I enter here in goal-reuse or ehc when I found no better node to expand also the helpful to see if I find a better node
		      (unless (or *expand-breadth-first-search-p*
				  (snode-p better-h-node)
				  (eq target-selector :action-reuse)
				  (not nearest)
				  (getf (snode-plist nearest) :expanded-non-helpful))
			;; before: (or (and (eq better-h-node 'no-intersection) (not (eq nearest node)))
			;; I try to do the same, but with the deepest node. I need to evaluate it for computing the helpful actions
			(if *trace-errt-p* (format t "~%~4$: Expanding NON-Helpful actions of nearest" (errt-time)))
			(errt-plan-distance nearest target h-function index)
			(errt-expand-node nearest tree target-selector h-function nil lookahead index)
			(my-print-children nearest)
			(setf better-h-node (cond ((snode-closed nearest)
						   (setq tree (remove nearest tree))
						   ;; NOT
						   ;; 					    (if (eq nearest ehc-node) (setq ehc-node (snode-parent ehc-node)))
						   (if (eq nearest ehc-node) (setq ehc-node (find-best-in-tree tree)))
						   nil)
						  (t (choose-next-node nearest target-selector tree target index h-function reversed-actions p r 'errt-plan
								       current-h current-h-plus discrete-h number-actions nil))))
			(when ehc-node
			  (if *trace-errt-p*
			      (format t "~% better-h-node: ~a, expanded-all: ~a, all-closed-p: ~a"
				      (not (snode-p better-h-node)) (getf (snode-plist nearest) :expanded-non-helpful) (every #'snode-closed (snode-children nearest))))
			  ;; I close nodes when all children have been expanded and all are closed (the distance to the main goal is infinite)
			  (when (and (not (snode-p better-h-node)) (getf (snode-plist nearest) :expanded-non-helpful) (every #'snode-closed (snode-children nearest)))
			    (my-print-node nearest "ERRT-PLAN-2 Closing")
			    (setf (snode-closed nearest) t)
			    (setq tree (remove nearest tree))
			    (when (eq nearest ehc-node)
			      ;; NOT
			      ;; 		     (setq ehc-node (snode-parent ehc-node)))
			      (when (setq ehc-node (find-best-in-tree tree))
				;;		     (setf (problem-goals *current-problem*) old-goals)
				(errt-plan-distance ehc-node old-goals h-function 0)
				;;		     (setf (problem-goals *current-problem*) target)
				(setq current-h (snode-h-value ehc-node))
				(setq current-h-plus (snode-h-plus ehc-node))
				;; so that it does not do anything else
				(setq better-h-node 'no-intersection)))
			    nil)
			  (if ehc-node
			      (my-print-node better-h-node "After rethought selected"))))
		      ;; 	      (t (format t "~%Nearest is null!")
		      ;; 		 (setq better-h-node 'no-intersection))))
		      ;;	       (setq standard-behavior-p (or (eq target-selector :ehc) (member better-h-node (snode-children node))))
		      (cond ((eq better-h-node 'no-intersection)) ;; when it is action-reuse and there was no intersection with previous actions or I want to stop the search
			    ((snode-p better-h-node)
			     (when (zerop (snode-h-value better-h-node))
			       (if *trace-errt-p* (format t "~%~4$: Setting goal-reuse pointer to ~d" (errt-time) (max pointer-goal-regression index)))
			       (setq pointer-goal-regression (max pointer-goal-regression index)))
			     (do ((current-node better-h-node)
				  (initp t nil))
				 ((and (not initp)
				       (or (not (eq target-selector :action-reuse)) ;; I need to enter at least once for EHC and goal-reuse nodes
					   (eq current-node 'no-intersection)
					   ;; 				    (eq current-node 'change-ehc)
					   (stop-search current-node problem)))
				  (when (and (snode-p current-node) (not (snode-closed current-node)))
				    (errt-plan-distance current-node old-goals h-function 0)
				    (when (< (snode-h-value current-node) current-h)
				      (setq ehc-node current-node)
				      (setq current-h (snode-h-value current-node))
				      (setq current-h-plus (snode-h-plus current-node)))
				    (setq pointer-goal-regression (max pointer-goal-regression (or (getf (snode-plist current-node) :checked-applicability) 0)))))
;; 			       (my-print-node current-node "Adding to tree")
			       (pushnew current-node tree)
;; 			       (pp-errt-tree tree)
			       (errt-plan-distance current-node old-goals h-function 0)
			       (when (< (snode-h-value current-node) current-h)
				 (setq ehc-node current-node)
				 (setq current-h (snode-h-value current-node))
				 (setq current-h-plus (snode-h-plus current-node)))
			       ;; I only search now under current-node, so tree=(current-node)
			       (setq current-node (choose-next-node current-node target-selector (list current-node) target index h-function reversed-actions p r 'errt-plan
								    current-h current-h-plus discrete-h number-actions helpful))))
			    ((zerop (snode-h-value nearest)) ;; usually this happens with goal-reuse
			     (if *trace-errt-p* (format t "~%~4$: Setting goal-reuse pointer to ~d" (errt-time) (max pointer-goal-regression index)))
			     (setq pointer-goal-regression (max pointer-goal-regression index)))
			    (*expand-breadth-first-search-p* ;; let us try not to expand the search too much
			     (setq expanded (if (eq target-selector :goal-reuse) nearest ehc-node))
			     (if *trace-errt-p* (format t "~%~4$: Doing breadth-first EHC search" (errt-time)))
			     (dolist (child (snode-children expanded))
			       (errt-plan-distance child target h-function index))
			     (setq visited (make-hash-table))
			     (setq number-visited 0)
			     ;; I do not count those on tree as visited through breadth-first
			     (dolist (node tree)
			       (push node (gethash (snode-hash-code node) visited)))
			     (dolist (node (snode-children expanded))
			       (unless (snode-closed node)
				 (incf number-visited)
				 (push node (gethash (snode-hash-code node) visited))))
			     (if *trace-errt-p* (format t "~4$: Number visited: ~d" (errt-time) number-visited))
			     (do* ((current-node expanded)
				   (local-current-h (snode-h-value current-node))
				   (local-current-h-plus (snode-h-plus current-node))
				   ;;			    (open-nodes (snode-children current-node))
				   (open-nodes (remove-if #'snode-closed (snode-children current-node)))
				   (better-found nil)
				   (expand-helpful (search-option-value :helpful search-options))
				   (finishp (stop-search current-node problem) (or finishp (stop-search current-node problem))))
				  ((or better-found
				       (>= number-visited *breadth-first-node-limit*)
				       (and (null open-nodes) (not expand-helpful))
				       (and finishp
					    (not (and expand-helpful
						      (or (eq (cdr finishp) :depth-bound)
							  (eq (cdr finishp) :recognized-dead-end))))))
				   (when *trace-errt-p*
				     (format t "~%~4$: Finishing breadth-first search" (errt-time))
				     (format t "~%~4$:   Reason: finishp: ~a, better-found: ~a, open-nodes: ~d nodes, expand-helpful: ~a, number visited: ~d" (errt-time)
					     finishp (if (snode-p better-found) (snode-number better-found) better-found)
					     (length open-nodes) expand-helpful number-visited))
				   (when (and (>= number-visited *breadth-first-node-limit*) (not better-found) (not finishp))
				     (incf *breadth-first-node-limit* 50)
				     (setq better-found (find-best-in-hash visited)))
				   (when (or better-found finishp)
				     (when (snode-p better-found)
				       ;;			       (setf (problem-goals *current-problem*) old-goals)
				       (do ((parent (snode-parent better-found) (snode-parent parent)))
					   ((or (null parent) (eq parent expanded))
					    (pushnew better-found tree)
					    ;; if new node is better than current closest node to goals, I should set it as new closest node
					    (errt-plan-distance better-found old-goals h-function 0)
					    (when (< (snode-h-value better-found) current-h)
					      (setq ehc-node better-found)
					      (setq current-h (snode-h-value better-found))
					      (setq current-h-plus (snode-h-plus better-found)))
					    (if (eq ehc-node expanded)
						;; NOT
						(setq ehc-node (if (snode-closed better-found)
								   (find-best-in-tree tree)
								   ;; 							    (snode-parent better-found)
								   better-found))))
					 ;; if a new node is better than current closest node to goals, I should set it as new closest node
					 (errt-plan-distance parent old-goals h-function 0)
					 (when (< (snode-h-value parent) current-h)
					   (setq ehc-node parent)
					   (setq current-h (snode-h-value parent))
					   (setq current-h-plus (snode-h-plus parent)))
					 (setf (getf (snode-plist parent) :expansion-reason) :current-search)
					 (pushnew parent tree)))
				     (if (and ehc-node (not (eq ehc-node expanded)))
					 (setf (getf (snode-plist ehc-node) :expansion-reason) :current-search))
				     (setf (getf (snode-plist expanded) :expansion-reason) :current-search)
				     (pushnew expanded tree)))
			       ;; if we hit depth-bound or dead-end and I still have time, I try again without helpful actions
			       (if (and finishp expand-helpful)
				   (setq expand-helpful nil))
			       (when (and (null open-nodes) expand-helpful)
				 (if *trace-errt-p* (format t "~%Reverting to NON-Helpful actions"))
				 (setq expand-helpful nil)
				 (setq current-node expanded)
				 (errt-expand-node current-node visited target-selector h-function nil lookahead index)
				 (setq open-nodes nil)
				 (dolist (child (snode-children current-node))
				   (unless (snode-closed child)
				     (if (not (snode-h-value child))
					 (errt-plan-distance child target h-function index))
				     (unless (member child (gethash (snode-hash-code child) visited))
				       (incf number-visited)
				       (push child (gethash (snode-hash-code child) visited)))
				     (push child open-nodes)))
				 ;; 			  (setq open-nodes (remove-if #'snode-closed (restore-nonhelpful current-node h-function)))
				 (setf (getf (snode-plist current-node) :expanded-non-helpful) t)
				 (if *trace-errt-p* (format t "~%~4$: Ordering nodes" (errt-time)))
				 (setq open-nodes (ehc-open-nodes open-nodes (search-option-value :children-sort search-options))))
			       ;; 	       (setq local-current-h (snode-h-value node))
			       ;; 	       (setq local-current-h-plus (snode-h-plus node))))
			       (when open-nodes
				 (setq current-node (pop open-nodes))
				 (if *trace-errt-p* (my-print-node current-node "Studying"))
				 ;; Checks that current-node is not the solution
				 (unless (or (setq finishp (stop-search current-node problem)) (snode-closed current-node))
				   (errt-expand-node current-node visited target-selector h-function expand-helpful lookahead index)
				   (print-search-node current-node nil)
				   ;; 			    (if use-rules-p (prune-by-rules current-node))
				   (setq better-found (get-enforced-heuristic current-node h-function local-current-h nil
									      :discrete discrete-h :current-h-plus local-current-h-plus :target target :errtp t))
				   (unless better-found
				     (dolist (child (snode-children current-node))
				       (unless (snode-closed child)
					 (if (not (snode-h-value child))
					     (errt-plan-distance child target h-function index))
					 (unless (member child (gethash (snode-hash-code child) visited))
					   (incf number-visited)
					   (push child (gethash (snode-hash-code child) visited)))
					 (pushnew child open-nodes :test #'equal-state)))
				     (when (and (getf (snode-plist current-node) :expanded-non-helpful) (every #'snode-closed (snode-children current-node)))
				       (my-print-node current-node "ERRT-PLAN-3 Closing")
				       (setf (snode-closed current-node) t))
				     (if *trace-errt-p* (format t "~%~4$: Ordering nodes" (errt-time)))
				     (setf open-nodes (ehc-open-nodes open-nodes (search-option-value :children-sort search-options))))
				   (when *trace-errt-p*
				     (format t "~4$: Number visited: ~d" (errt-time) number-visited)
				     (my-print-node current-node "Breadth-first")
				     (format t ", local-current-h: ~2$" local-current-h (snode-h-value current-node))
				     (cond (better-found (my-print-node better-found "Better"))
					   (t 
					    (my-print-children current-node)
					    (format t "~%Open list:")
					    (dolist (my-node open-nodes)
					      (my-print-node my-node "Open")))))))))
			    (t nil)))
		     (t (setq ehc-node nearest))))
	      (t (if *trace-errt-p* (format t "~%~4$: All nodes are closed, nearest is nil" (errt-time)))
		 (setq ehc-node nil))))
      (when ehc-node
	;; 	(if (and use-rules-p *rete-root-node*)
	;; 	    (push-to-rete-state ehc-node nil))
	;;	(setf (problem-goals *current-problem*) old-goals)
	(errt-plan-distance ehc-node old-goals h-function 0)
	(when (and (numberp (snode-h-value ehc-node))
		   (= (snode-h-value ehc-node) most-positive-fixnum))
	  (setf (snode-closed ehc-node) t)
	  ;; NOT
	  ;; 	  (setq ehc-node (car (setq tree (ehc-open-nodes tree (search-option-value :children-sort search-options))))))
	  (setq ehc-node (find-best-in-tree tree)))
	(when ehc-node
	  (setq current-h (snode-h-value ehc-node))
	  (setq current-h-plus (snode-h-plus ehc-node))
	  (my-print-node ehc-node "EHC")
	  (if *trace-errt-p* (format t ", current-h: ~2$" current-h))))
      (pp-errt-tree tree)
      (setf (problem-goals *current-problem*) old-goals))))
;; 	     (setf open-children (nconc (remove-if #'snode-closed (snode-children ehc-node)) open-children))
;; 	     (cond ((not (snode-p (setf next-ehc-node (pop open-nodes))))
;; 		    (if *trace-errt-p* (format t "  ~% [Expanding Breadth Level]"))
;; 		    (setf open-nodes (ehc-open-nodes open-children (search-option-value :children-sort search-options)))
;; 		    (when (null open-nodes) ;;Recuperando la poda por las helpful actions
;; 		      (setf open-nodes (restore-nonhelpful node h-function))
;; 		      (if *trace-errt-p* (format t "  ~%!!Restoring NON Helpful Nodes.")))
;; 		    (setf ehc-node (pop open-nodes))
;; 		    (setf open-children nil))
;; 		   (t (setf ehc-node next-node)))

;; I do not know what to do in this case.
;; 	     (restore-nonhelpful ehc-node h-function)
;; 	     (when (setq next-ehc-node (member better-h-node (snode-children ehc-node) :test #'equal-state))
;; 	       (setf (getf (snode-plist (car next-node)) :expansion-reason) :reuse)
;; 	       (pushnew next-node tree))
;; 	     (if *trace-errt-p* (format t "  ~%!!Restoring NON Helpful Nodes."))))

;; Returns a new goals hash table and an index on the previous actions
(defun errt-choose-target (goals p r goal-regression target-selector actions current-pointer number-actions)
  (multiple-value-bind (new-goals index)
      (cond ((or (eq target-selector :action-reuse) (eq target-selector :ehc))
	     (values goals 0))
	    (t (choose-one-goal goal-regression target-selector actions current-pointer number-actions)))
    ;; in the case the current node is beyond the length of the previous solution, we set the new target to the problem goals
    (if (not new-goals)
	(setq new-goals goals))
    (if (and (eq target-selector :goal-reuse) *trace-errt-p*) (format t "~%New goals index: ~d, Pointer: ~d~%Goals: ~a" index current-pointer new-goals))
    (values (literalgoals-bitmap new-goals) index)))

;;Transforms a list of literals into a state bitmap
;; DB: I check whether the literal is present in the current problem, since previous goals might not be in the new problem. If not present, I just remove it from goal set.
(defun literalgoals-bitmap (literal-goals)
  (let ((goal-map (make-hash-table :test #'eq))
	(pred-pos-list nil)
	(predpos nil))
    (do* ((lits literal-goals (cdr lits))
	  (i-literal (car lits) (car lits)))
	((null lits))
      (setq predpos (gethash i-literal *facts*))
;,      (format t "~%literal: ~a, predpos: ~a" i-literal predpos)
      (when predpos
	(push (fact-predpos predpos) pred-pos-list)
	(unless (hkey-present (car i-literal) goal-map)
	  (setf (gethash (car i-literal) goal-map)
		(copy-seq (gethash (car i-literal) (problem-patterns *current-problem*)))))))
    (dolist (i-predpos (reverse pred-pos-list) goal-map) 
      (change-state goal-map (car i-predpos) (cdr i-predpos) 1))))

;; Returns an index and a random goal regression from one of the actions in the previous plan or the preconds of a previous action or a previous action
;; Currently, I only use goal-regression
(defun choose-one-goal (goal-regression target-selector actions current-depth number-actions)
  (let ((random 0))
;;    (format t "~%Numactions: ~d, current-depth: ~d" number-actions current-depth)
    (case target-selector
      (:goal-reuse (cond ((> number-actions (1+ current-depth))
			 (setq random (+ 1 current-depth (random (- number-actions current-depth 1))))
			 (values (elt goal-regression random) random))
			(t (values nil 0))))
      (:random (setq random (1+ (random number-actions)))
	      (let ((goals (elt goal-regression random))
		    (new-goals nil))
		(dotimes (i (random (1- (length goals))))
		  (push (choose-one goals) new-goals)
		  (setq goals (remove (car new-goals) goals :test #'equal)))
		(values new-goals random)))
      (:preconds (setq random (random number-actions))
		(values (cadr (elt actions random)) random))
      (otherwise (values nil 0)))))

;; If I am using action-reuse, I compute the intersection between previous actions and children of node. It intersection is empty, I return no-intersection. If
;; not, I return the child. If I am not using action-reuse, then it behaves as ERRT-PLAN, or ERRT-HC
(defun choose-next-node (node target-selector tree target index h-function reversed-actions p r algorithm &optional current-h current-h-plus discrete-h number-actions helpful)
  (if (not (snode-closed node))
      (let* ((action-based-p (eq target-selector :action-reuse))
	     (goal-based-p (eq target-selector :goal-reuse))
	     (reuse-node (if action-based-p (choose-one-action reversed-actions tree number-actions helpful)))
	     (best-child nil))
	(if (not (eq algorithm 'errt-plan))
	    (update-childen algorithm node tree action-based-p reuse-node target h-function index))
	(cond (action-based-p (cond ((null reuse-node) 'no-intersection) ;;change-ehc)
				    ((snode-closed reuse-node)
				     (cond ((and (zerop p) (= r 1.0)) nil)
					   ;; since EHC can generate solutions state loops, I still have to select the node to be consistent: the behavior with p=0 and r=1 must
					   ;; be exactly equal to previous solution
					   ;; Not anymore
					   ;; 			     (setf (snode-closed reuse-node) nil)
					   ;; 			     (if *trace-errt-p* (format t "~%~4$: Selected a node that was CLOSED" (errt-time)))
					   ;; 			     (setf (getf (snode-plist reuse-node) :expansion-reason) :reuse-closed)
					   ;; 			     reuse-node)
					   (t 'no-intersection)))
				    (t (if *trace-errt-p* (format t "~%~4$: Selected a node from ACTION-REUSE" (errt-time)))
				       (if (null (snode-h-value reuse-node))
					   (errt-plan-distance reuse-node target h-function index))
				       (return-node reuse-node :reuse))))
	      ;; goal-reuse or standard EHC
	      ((eq algorithm 'errt-plan)
	       (if *trace-errt-p*
		   (if goal-based-p
		       (format t "~%~4$: Selected best node from GOAL-REUSE" (errt-time))
		       (format t "~%~4$: Selected best node from CURRENT SEARCH" (errt-time))))
	       (errt-plan-distance node target h-function index)
	       (setq current-h (snode-h-value node))
	       (setq current-h-plus (snode-h-plus node))
	       (my-print-node node (if goal-based-p "Goal-reuse" "EHC"))
	       (my-print-children node)
	       (return-node (get-enforced-heuristic node h-function current-h nil
							   :discrete discrete-h :current-h-plus current-h-plus
							   :errtp t :target target :index index)
			    (if goal-based-p :reuse :current-search)))
	      (t (if *trace-errt-p* (format t "~%~4$: Selected best node from CURRENT SEARCH" (errt-time)))
		 (return-node (hc-next-node node) :current-search))))))
;; 		  (dolist (child (snode-children node))
;; 		    (errt-plan-distance child target h-function index))
;; 		  (return-node (hc-next-node node) :reuse))
	   ;; one problem is that EHC does not want to revisit nodes, while with goal-reuse we want to revisit them also, if local maxima found, given that we
	   ;; do not allow EHC to work in successive cycles, it does not perform breadth-first. Thus, I prefer to get outof local maxima when doing goal-reuse
	   ;; by selecting the best child.

;; Just for ERRT-HC
(defun update-childen (node tree action-based-p reuse-node target h-function index)
  (declare (special *computation-avoided*))
  (dolist (i-child (snode-children node))
    (cond ((find i-child (gethash (snode-hash-code i-child) tree) :test #'equal-state)
	   (my-print-node i-child "Closing")
	   (setf (snode-closed i-child) t))
	  ;; I only need to evaluate if random decision selects to make decision according to h(n)
	  ((and action-based-p reuse-node) (incf *computation-avoided*))
	  ;; I now have to reevaluate each child node
	  ;; 	(store-h-extras i-child h-function))
	  (t (errt-plan-distance i-child target h-function index)))))

(defun return-node (selected-node reason)
  (cond ((snode-p selected-node)
	 (setf (getf (snode-plist selected-node) :expansion-reason) reason)
	 selected-node)
	(t reason)))

;; Returns the closest action from the end of the plan that can be applied in the closest node to goal (node). Either it has already been expanded in the node,
;; or it gets expanded now. I do not consider the ones that had previously been selected. Before that, I remove the first node-depth nodes since I do not want
;; to apply previous actions.
(defun choose-one-action (reversed-actions tree number-actions helpful)
  (some #'(lambda (node)
	    (let ((pointer-actions (getf (snode-plist node) :checked-applicability)))
	      (if (and (or (not pointer-actions)
			   (<= pointer-actions number-actions)))
		  (do* ((actions (if *start-from-end-p*
				     (butlast reversed-actions (setq pointer-actions (or pointer-actions 0)))
				     (nthcdr (setq pointer-actions (or pointer-actions 0)) reversed-actions))
				 (cdr actions))
			(action (car actions) (car actions))
			(i pointer-actions (1+ i))
			(found nil))
		      ((or (null actions) found)
		       (setq i (1+ (if found (max pointer-actions (if *start-from-end-p* (- number-actions i) (1- i))) number-actions)))
		       (cond (found
			      (setf (getf (snode-plist found) :checked-applicability) i)
			      (when *trace-errt-p*
				(my-print-node found "Found applicable")
				(format t ", from position ~a to position ~d" pointer-actions i)))
			     (t (if *trace-errt-p* (format t "~%~4$: Not found applicable in node ~d from position ~a" (errt-time) (snode-number node)
							   (getf (snode-plist node) :checked-applicability)))))
		       (setf (getf (snode-plist node) :checked-applicability) i)
		       found)
		    (setq found (find-applicable-action action node helpful tree)))
		  (if *trace-errt-p* (my-print-node node "No action-reuse in")))))
	tree))

;; Version for only one node
;; (defun choose-one-action (reversed-actions node number-actions helpful)
;;   (let ((pointer-actions (getf (snode-plist node) :checked-applicability)))
;;     (if (and (or (not pointer-actions)
;; 		 (<= pointer-actions number-actions)))
;; 	(do* ((actions (butlast reversed-actions (setq pointer-actions (or pointer-actions 0)))
;; 		       (cdr actions))
;; 	      (action (car actions) (car actions))
;; 	      (i pointer-actions (1+ i))
;; 	      (found nil))
;; 	    ((or (null actions) found)
;; 	     (setq i (1+ (if found (max pointer-actions (- number-actions i)) number-actions)))
;; 	     (when *trace-errt-p*
;; 	       (cond (found
;; 		      (setf (getf (snode-plist found) :checked-applicability) i)
;; 		      (my-print-node found "Found applicable")
;; 		      (format t ", from position ~a to position ~d" pointer-actions i))
;; 		     (t (format t "~%~4$: Not found applicable from position ~a" (errt-time) (getf (snode-plist node) :checked-applicability)))))
;; 	     (setf (getf (snode-plist node) :checked-applicability) i)
;; 	     found)
;; 	  (setq found (find-applicable-action action node helpful))))))

(defun find-applicable-action (action node helpful tree)
  (or (find-expanded-child action (snode-children node))
      (let* ((applicable (applicable-action-p (car action) node))
	     (ibit (car applicable))
	     (applicable-byte (cdr applicable))
	     (app-action nil)
	     (new-state nil)
	     (child-node nil)
	     (state nil))
	(if *trace-errt-p*
	    (format t "~%~4$: Action ~a,~%     applicable in ~d ~a, ~a" (errt-time) (car action) (snode-number node)
		    (if (snode-applied-action node) (gaction-planaction (snode-applied-action node)))
		    (and applicable t)))
	(cond (applicable
	       (setq state (snode-state node))
	       (setq app-action (aref *actions-table* ibit))
	       (setq new-state (apply-action-instance state app-action))
	       ;;			 (setq (snode-expanded node) t)
	       (setq child-node (make-snode :depth (+ 1 (snode-depth node))
					    :parent node
					    :state new-state
					    :applied-action app-action
					    :helpful-p helpful))
	       ;; I do not care what the parent looked like
	       (setf (getf (snode-plist child-node) :branch-type) :action-reuse)
	       (cond ((member new-state tree :test #'errt-equal-state :key #'snode-state)
		      (setf (snode-closed child-node) t)
		      (when *trace-errt-p*
			(my-print-node node "Repeated state child of")
			(format t "~%        action ~a" (gaction-planaction app-action)))
		      nil)
		     (t (setf (snode-cost child-node) (action-cost-metric state new-state))
;; 			(setf (getf (snode-plist child-node) :checked-applicability) (getf (snode-plist node) :checked-applicability))
			(setf (snode-number child-node) (incf (getf (problem-plist *current-problem*) :node-counter)))
			(if *trace-errt-p* (setf (gethash (snode-number child-node) *hash-nodes*) child-node))
			(setf (snode-hash-code child-node) (compute-duphash-code new-state))
			;; just in case it was expanded before, and so it was not found by the member above
			(pushnew child-node (snode-children node) :test #'(lambda (new old-action) (equal app-action old-action)) :key #'snode-applied-action)
			child-node)))
	      (t nil)))))

(defun applicable-action-p (action node)
  (do* ((applicable-byte (find-applicable-byte node nil))
	(ibit 0 (1+ ibit))
	(applicable-p nil))
      ((or (>= ibit (integer-length applicable-byte))
	   applicable-p)
       applicable-p)
    (if (and (logbitp ibit applicable-byte)
	     (equal action (gaction-planaction (aref *actions-table* ibit))))
	(setq applicable-p (cons ibit applicable-byte)))))

(defun find-expanded-child (action children)
  (car (member (car action) children
	       :test #'(lambda (real-action child)
			 (cond ((snode-closed child)
				(if *trace-errt-p* (my-print-node child "Found closed"))
				nil)
			       (t (let ((found (equal real-action (gaction-planaction (snode-applied-action child)))))
				    (if *trace-errt-p* (format t "~%~4$: Action ~a,~%        same as ~a, ~a" (errt-time) real-action
							       (if (snode-applied-action child) (gaction-planaction (snode-applied-action child)))
							       found))
				    found)))))))

;; 			 (and (equal real-action (gaction-planaction (snode-applied-action child)))
;; 			      (not (getf (snode-plist child) :expansion-reason)))))))

;; I do not see how we can do this easily, unless we select randomly from a subset of preconds of actions in the relaxed plan of the node and then translate into hash table
;; (defun rrt-random-state (goal)
;;   goal)

(defun errt-expand-node (node tree-or-visited target-selector h-function helpful lookahead index)
  (cond ((getf (snode-plist node) :expanded-non-helpful))
	((snode-expanded node)
	 (cond ((not helpful)
;; 		(and (eq target-selector :action-reuse)
;; 		     (not (getf (snode-plist node) :expanded-non-helpful)))
		(if *trace-errt-p* (my-print-node node "Expanding all children of expanded"))
		(setf (getf (snode-plist node) :expanded-non-helpful) t)
		(setf (getf (snode-plist node) :expanded-goals) 'all)
		(errt-expand-state node tree-or-visited :helpful nil :target-selector target-selector))
	       ((or (eq (getf (snode-plist node) :expanded-goals) 'all)
		    (member index (getf (snode-plist node) :expanded-goals)))
		(when *trace-errt-p* (my-print-node node "Already expanded") (format t " towards index ~d" index)))
	       (t (push index (getf (snode-plist node) :expanded-goals))
		  (when *trace-errt-p*
		    (my-print-node node "Re-expanding")
		    (format t " towards index ~d" index))
		  (let ((previous-computation (gethash (cons (snode-number node) index) *distance-computation*)))
		    (setf (snode-helpful-byte node) (nth 2 previous-computation))
		    (setf (snode-applicable-byte node) (nth 3 previous-computation))
		    (errt-expand-state node tree-or-visited :helpful (if (eq target-selector :action-reuse) nil helpful) :target-selector target-selector)))))
	(t (cond ((or (not helpful) (eq target-selector :action-reuse))
		  (if *trace-errt-p* (my-print-node node "Expanding all children of"))
		  (setf (getf (snode-plist node) :expanded-non-helpful) t)
		  (setf (getf (snode-plist node) :expanded-goals) 'all))
		 (t (when *trace-errt-p*
		      (my-print-node node "Expanding")
		      (format t " towards index ~d" index))
		    (setf (getf (snode-plist node) :expanded-goals) (list index))))
	   (errt-expand-state node tree-or-visited :helpful (if (eq target-selector :action-reuse) nil helpful) :target-selector target-selector)))
  (if lookahead (expand-for-lookahead node lookahead)))

(defun errt-expand-state (node tree-or-visited &key (helpful t) (restoring-byte nil) (target-selector :ehc))
  (let* ((state (snode-state node)) (children nil)
	 (applicable-byte (if (null restoring-byte) (find-applicable-byte node helpful) restoring-byte))
	 (new-state nil) (child-node nil) (code nil))
    (dotimes (ibit (integer-length applicable-byte))
      (when (logbitp ibit applicable-byte)
	(let ((app-action (aref *actions-table* ibit))
	      (constraints (getf (problem-plist *current-problem*) :constraints)))
	  (unless (member app-action (snode-children node) :key #'snode-applied-action)
	    (setq new-state (apply-action-instance state app-action))
	    (when (or (not constraints) (fulfills-constraints new-state constraints))
	      (setq code (compute-duphash-code new-state))
	      ;; In breadth-first search I pass it the visited nodes in that search plus the tree
	      (setq found (if (listp tree-or-visited)
			      (member new-state tree-or-visited :test #'errt-equal-state :key #'snode-state)
			      (find-if #'(lambda (node) (errt-equal-state new-state (snode-state node)))
				       (gethash code tree-or-visited))))
	      (setf (snode-expanded node) t)
	      (setf child-node (make-snode :depth (+ 1 (snode-depth node))
					   :parent node
					   :state new-state
					   :applied-action app-action
					   :helpful-p helpful))
	      ;; I only change it in EHC branches. Otherwise, they inherit
	      (if (eq (getf (snode-plist node) :branch-type) :ehc)
		  (setf (getf (snode-plist child-node) :branch-type) target-selector)
		  (setf (getf (snode-plist child-node) :branch-type)  (getf (snode-plist node) :branch-type)))
	      (setf (snode-number child-node) (incf (getf (problem-plist *current-problem*) :node-counter)))
	      (push child-node children)
	      (cond (found
		     (setf (snode-closed child-node) t)
		     (when *trace-errt-p*
		       (my-print-node node "Repeated state child of")
		       (format t "~%        action ~a" (gaction-planaction app-action))))
		    (t (setf (snode-cost child-node) (action-cost-metric state new-state))
		       (if *trace-errt-p* (setf (gethash (snode-number child-node) *hash-nodes*) child-node))
		       ;; 		     (setf (getf (snode-plist child-node) :checked-applicability) (getf (snode-plist node) :checked-applicability))
		       (setf (snode-hash-code child-node) code))))))))
    ;;     (if (null restoring-byte)
    ;; 	(setf (snode-children node) (reverse children))
    (setf (snode-children node)
	  (nconc (reverse children) (snode-children node)))))
;; I need to check whether it is a repeated state. I know this is quite consuming... It is not enough to search in tree since when expanding
;; breadth-first search nodes are not yet there.
;;  	    (setq found nil)
;;  	    (do ((current-node (snode-parent node) (snode-parent current-node)))
;;  		((or found (null current-node))
;;  		 (setq found (or found (member new-state tree :test #'errt-equal-state :key #'snode-state))))
;;  	      (setq found (errt-equal-state new-state (snode-state current-node))))


(defun errt-equal-state (state1 state2)
  (let ((are-equal t))
    (maphash #'(lambda (pred1 pred-bitmap1)
		 (when are-equal
		   (when (or (bit-vector-p pred-bitmap1)
			     (find pred1 (dom-positive-vars *pspace*))
			     (find pred1 (dom-negative-vars *pspace*)))
		     (unless (equalp pred-bitmap1 (gethash pred1 state2))
		       (setf are-equal nil)))))
	     state1)
    are-equal))

;; The goals are set by the ERRT algorithm
;; If it had computed previously the heuristic, it does not recompute it again.
(defun errt-plan-distance (node goals h-function index)
  (declare (special *distance-computation*))
  (if *trace-errt-p* (my-print-node node "Heuristic of"))
  (cond ((snode-closed node)
	 (if *trace-errt-p* (format t "; goals: ~d; h: INFINITY; closed" index))
	 (setf (snode-h-value node) most-positive-fixnum)
	 (setf (snode-h-plus node) most-positive-fixnum)
	 most-positive-fixnum)
	(t (let* ((key (cons (snode-number node) index))
		  (previous-computation (gethash key *distance-computation*))
		  (heuristic (nth 0 previous-computation))
		  (relaxed-plan (nth 1 previous-computation))
		  (helpful-byte (nth 2 previous-computation))
		  (applicable-byte (nth 3 previous-computation)))
	     ;; (format t "~%Computing distance of node ~a, action ~a" (snode-number node) (snode-applied-action node))
	     ;; ~%with goals: ~a (pp-state goal 'list)
	     (if *trace-errt-p* (format t "; goals: ~d; " index heuristic))
	     (cond (previous-computation (incf *computation-avoided*)
					 (setf (snode-h-value node) heuristic)
					 (setf (snode-h-plus node) (length relaxed-plan))
					 (setf (snode-relaxed-plan node) relaxed-plan)
					 (setf (snode-helpful-byte node) helpful-byte)
					 (setf (snode-applicable-byte node) applicable-byte)
					 (if *trace-errt-p* (format t "AC; ")))
		   (t (setf (problem-goals *current-problem*) goals)
		      (store-h-extras node h-function t index)
		      (setq heuristic (snode-h-value node))
		      (when (and (zerop index) (= most-positive-fixnum heuristic))
			(my-print-node node "RRT-Closing")
			(setf (snode-closed node) t))
		      (setf (gethash key *distance-computation*)
			    (list heuristic (snode-relaxed-plan node) (snode-helpful-byte node) (snode-applicable-byte node)))))
;; 	     (if (zerop heuristic)
;; 		 (setf *nodo* node *goals* (problem-goals *current-problem*)))
	     (if *trace-errt-p* (format t ", Result: ~a" heuristic))
	     heuristic))))

(defun errt-nearest (tree target h-fn index)
  (let ((nearest nil)
	(distance most-positive-fixnum)
	(new-distance)
	(parent nil))
    (dolist (node tree)
      ;;       (unless (getf (snode-plist node) :nearest-used)
      (unless (snode-closed node)
	(setq new-distance (errt-plan-distance node target h-fn index))
	(cond ((< new-distance distance)
	       (setq nearest (list node))
	       (setq distance new-distance))
	      ((= new-distance distance)
	       (push node nearest))
	      (t nil))))
    ;;    (format t "~%List of nearest nodes: ~a" nearest)
    (car (sort nearest #'> :key #'(lambda (node) (snode-depth node))))))
;; 	     (cond ((find-if #'(lambda (best-node) (eq (snode-parent best-node) node)) nearest))
;; 		   ((setq parent (find-if #'(lambda (best-node) (eq (snode-parent node) best-node)) nearest))
;; 		    (setq nearest (remove parent nearest))
;; 		    (push node nearest))
;; 		   (t (push node nearest))))

;; Version that selects randomly from the best nodes in the tree.
;; (defun nearest (tree target errt-plan-distance h-fn index)
;;   (let ((nearest nil)
;; 	(distance most-positive-fixnum)
;; 	(new-distance))
;;     (dolist (node tree)
;;       (setq new-distance (funcall errt-plan-distance node target h-fn index))
;;       (cond ((< new-distance distance)
;; 	     (setq nearest (list node))
;; 	     (setq distance new-distance))
;; 	    ((= new-distance distance)
;; 	     (push node nearest))
;; 	    (t nil)))
;;     (format t "~%List of nearest nodes: ~a" nearest)
;;     (choose-one nearest)))

;; DB. Modified so that it accounts well for removing state loops
(defun build-solution (node problem found reason)
  (let* ((stop-time (get-internal-run-time))
	 (initial-pre-time (getf (problem-plist problem) :initial-pre-time))
	 (initial-search-time (getf (problem-plist problem) :initial-search-time))
	 (this-solution (make-solution 
			 :found found
			 :total-time (float (/ (- stop-time initial-pre-time)
					       internal-time-units-per-second))
			 :pre-time (float (/ (- initial-search-time initial-pre-time)
					     internal-time-units-per-second))
			 :search-time (float (/ (- stop-time initial-search-time)
						internal-time-units-per-second))
			 :depth (when (snode-p node) (snode-depth node))
			 :path (when (snode-p node) (build-path node))
			 :num-nodes (1+ (getf (problem-plist problem) :node-counter)) ;;mas el nodo inicial
			 :evaluated-nodes (getf (problem-plist problem) :node-evaluated)
			 :last-node node
			 :stop-reason reason)))
    (setf (solution-length this-solution)
	  (when (snode-p node) (compute-solution-length (solution-path this-solution))))
    (setf (solution-total-cost this-solution)
	  (when (snode-p node) (compute-total-cost node problem (solution-length this-solution))))
    this-solution))

;; The default is the length of the solution-path, but in lookaheads we have to compute the length of lookahead plans
(defun compute-solution-length (path)
  (let ((length 0))
    (dolist (i-node path length)
      (cond ((lhnode-p i-node) 
	     (setf length (+ length (lhnode-lookahead-depth i-node))))
	    (t (incf length))))))

(defun compute-total-cost (node problem length)
  (let ((metric (problem-metric problem))
	(last-state (snode-state node)))
    (cond ((null metric) length)
	  (t
	   ;; this should be recomputed?
	   (operand-funeval (cadr metric) last-state nil)))))

(defun get-enforced-heuristic (node h-function current-h visited-nodes &key (discrete nil) (current-h-plus 0) (errtp nil) (target (problem-goals *current-problem*)) (index 0))
  (let ((better-found nil) (node-counter 0))
    (dolist (i-child (snode-children node) better-found)
      (my-print-node i-child "Evaluating")
      (when (null better-found)
	(cond ((snode-closed i-child))
	      ((or errtp (not (find i-child (gethash (snode-hash-code i-child) visited-nodes) :test #'equal-state)))
	       (incf node-counter)
	       (cond (errtp (errt-plan-distance i-child target h-function index))
		     (t (store-h-extras i-child h-function index)
			;; I do not use visited in EHC
			(pushnew i-child (gethash (snode-hash-code i-child) visited-nodes) :test #'equal-state)))
	       (if *trace-errt-p* (format t ", Value: ~4f, current-h: ~4f" (snode-h-value i-child) current-h))
	       (cond (discrete
		      (when (< (snode-h-value i-child) current-h)
			(setf better-found i-child)
			(when *trace-ehc*
			  (push node-counter *hit-node*))))
		     (t
		       (when (or (< (snode-h-value i-child) current-h)
				 (and (= (snode-h-value i-child) current-h)
				      (< (snode-h-plus i-child) current-h-plus)))
			 (setf better-found i-child))))) 
	      (t
;;	       (if *trace-errt-p* (format t " CLOSED"))
 	       (my-print-node i-child "Closing")
 	       (setf (snode-closed i-child) t)))
	       ))))

;; Returns the best node in the breadth-first search
(defun find-best-in-hash (visited)
  (let ((best-node nil)
	(best-h most-positive-fixnum))
    (maphash #'(lambda (key val)
		 (dolist (node val)
		   (when (< (snode-h-value node) best-h)
		     (setq best-h (snode-h-value node))
		     (setq best-node node))))
	     visited)
    best-node))

;; Returns the best node in the tree that that does not belong to the EHC branch or it belongs to branch-type (:ehc, :action-reuse, or :goal-reuse)
(defun find-best-in-tree (tree &optional (branch-type :not-ehc))
  (let ((best-node nil)
	(best-h most-positive-fixnum))
    (dolist (node tree)
      (when (and (< (snode-h-value node) best-h)
		 (or (and (eq branch-type :not-ehc)
			  (not (eq (getf (snode-plist node) :branch-type) :ehc)))
		     (eq branch-type (getf (snode-plist node) :branch-type))))
	(setq best-h (snode-h-value node))
	(setq best-node node)))
    (if *trace-errt-p*
	(if best-node
	    (my-print-node best-node "Found for searching")
	    (format t "~%~4$: No node found for continuing the search" (errt-time))))
    best-node))

;; DB. So that it prefers nodes with less depth in case of tie
(defun lessthan-h-metricplus (node1 node2)
  (cond ((< (snode-h-value node1) (snode-h-value node2)) t)
	((= (snode-h-value node1) (snode-h-value node2))
	 (if (< (snode-h-plus node1) (snode-h-plus node2))
	     t
	     (< (snode-depth node1) (snode-depth node2))))
	(t nil)))

;; DB: I want to know how much time it takes to compute it. And I also want to control when to close nodes.
(defun store-h-extras (node h-function &optional (errtp nil) (index 0))
  (let ((init-time (get-internal-run-time)))
    (multiple-value-bind (h-value relaxed-plan)
	;;  goal-layers numgoal-layers
	(funcall h-function node)
      (setf (snode-h-value node) h-value)
      (setf (snode-h-plus node) (length relaxed-plan))
;;      (if *trace-errt-p* (my-print-node node "Directly from oven"))
      (setf (snode-relaxed-plan node) relaxed-plan)
      ;;      (setf (snode-focus-goals node) focus-goals)
      (incf (getf (problem-plist *current-problem*) :node-evaluated))
      (incf (getf (problem-plist *current-problem*) :heuristic-time) (elapsed-time init-time))
;;       (setf (getf (problem-plist *current-problem*) :goal-layers) goal-layers)
;;       (setf (getf (problem-plist *current-problem*) :numgoal-layers) numgoal-layers)
      (when (and (not errtp) (zerop index) (= h-value most-positive-fixnum))
	(my-print-node node "Store-closing")
	(setf (snode-closed node) t))
      )))

;; Cambiar en las demas heuristicas
;; DB. added to return the bytes
;; (defun h-relaxedplan (node &optional (goals (problem-goals *current-problem*)))
;;   (let* ((pg (metric-relaxedplan node goals)))
;;     (cond ((plangraph-p pg)
;; 	   (values (length (pg-relaxed-plan pg)) 
;; 		   (pg-relaxed-plan pg)
;; 		   (gethash 1 (pg-goal-layers pg))
;; 		   (gethash 1 (pg-numgoal-layers pg))))
;; 	  (t (values most-positive-fixnum nil nil nil)))))

;; DB: added heuristic-time
(defun initialize-current-problem ()
  (let ((problem *current-problem*))
    (update-artificial-initstate)
    (instantiate-operators)
    (init-heuristics)
    (setf (getf (problem-plist problem) :node-counter) 0)
    (setf (getf (problem-plist problem) :node-evaluated) 0)
    (setf (getf (problem-plist problem) :heuristic-time) 0)
    (if *trace-errt-p* (setf *hash-nodes* (make-hash-table)))
    (setf (problem-search-tree problem)
	  (make-snode :number 0
		      :depth 0
		      :state (copy-state (problem-init-state problem))
		      :hash-code (compute-duphash-code (problem-init-state problem))))))

;; DB: modified to run also ERRT
(defun runset (domain domain-file &key (algorithm nil) (heuristic nil) (cost *say-costfn*)  (max-solutions most-positive-fixnum) (helpful *say-helpful*)
	              (w_g nil) (w_h nil) (timeout 5) (output-level 1) (depthbound 3000) (metric nil) (probs-prefix "p") (save-result t) (out-file nil) (try2-search t)
		      (experiment-var nil) (say-learning-p nil) (rules-file nil) (use-rules-p nil) (init-learning-p nil) (search-options nil))
  (declare (ignore metric))
  (setf *say-output* output-level)
  (say-domain domain domain-file)
  ;; so that we generate the new problems with the right name
  (setq domain (car (dom-name *pspace*)))
  (let* ((probdir (format nil "~aprobsets/" *domain-dir*))
	 (count-prob 1) (this-sol nil)
	 (result-file (init-results-files out-file "" probs-prefix (cons `(:timeout ,timeout) search-options)))
	 (wild-char #+SBCL "*.*"
		    #-SBCL "*"))
    (dolist (thisprob (dirfiles-sorted probdir (concatenate 'string probs-prefix wild-char)))
      (dotimes (i (if (search-option-value :start-with-subgoal search-options) (max 1 (or (search-option-value :max-starts search-options) 0)) 1))
	(setq this-sol (or (pop (search-option-value :initial-solutions search-options))
			   (if (search-option-value :start-with-subgoal search-options)
			       nil
			       (solve-problem thisprob algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
					      rules-file use-rules-p search-options save-result count-prob experiment-var say-learning-p result-file nil))))
	(when (search-option-value :use-errt search-options)
	  (if (eq (search-option-value :modify-problem search-options) 'from-probset)
	      (setf *modified-probset* (dirfiles-sorted probdir (concatenate 'string (search-option-value :modified-probset search-options) wild-char))))
	  (errt-solve domain domain-file algorithm heuristic cost max-solutions helpful w_g w_h timeout depthbound save-result try2-search experiment-var say-learning-p result-file
		      rules-file use-rules-p search-options count-prob this-sol (search-option-value :p search-options) (search-option-value :r search-options)
		      (remove-if #'(lambda (option) (or (eq (car option) :p) (eq (car option) :r))) search-options) thisprob))
	(setf this-sol nil)
	(free-mem)
	(incf count-prob)))
    (if (eq *say-solution-format* :list)
	(with-open-file (out-stream result-file :direction :output :if-exists :append :if-does-not-exist :create)
	  (format out-stream ")")))))

(defun errt-solve (domain domain-file algorithm heuristic cost max-solutions helpful w_g w_h timeout depthbound save-result try2-search experiment-var say-learning-p result-file
			  rules-file use-rules-p search-options count-prob this-sol p r new-search-options thisprob)
  (when (or (stringp this-sol) (pathnamep this-sol))
    (with-open-file (istream this-sol :direction :input) (setq this-sol (read istream)))
    (load-prob thisprob))
  (let ((previous-sol (if (listp this-sol) this-sol (solution-found this-sol)))
	(time-simpler-problem (get-internal-run-time)))
    (unless previous-sol
      (setq previous-sol nil)
      (free-mem)
      (setq this-sol (find-solvable-problem thisprob domain domain-file search-options algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
					    rules-file use-rules-p save-result count-prob experiment-var say-learning-p result-file 0 p r))
      (setq time-simpler-problem (elapsed-time time-simpler-problem)))
    (if this-sol
	(let* ((solution (if (listp this-sol) this-sol (solution-path this-sol)))
	       (time-goal-regression (get-internal-run-time))
	       (partial-plan (build-partial-plan solution))
	       (actions (if partial-plan (partial-plan-actions partial-plan)))
	       (goal-regression (if partial-plan (compute-goal-regression partial-plan solution)))
	       (just-actions nil)
	       (new-prob nil))
	  (setq time-goal-regression (elapsed-time time-goal-regression))
	  (format t "~2%Time to compute partial plan and weakest preconds: ~4$" time-goal-regression)
	  (if *trace-errt-p* (format t "~2%~4$: Before removing static preds" (errt-time)))
	  (if *remove-static-preds* (setq goal-regression (remove-static-preds goal-regression)))
	  (if *trace-errt-p* (format t "~%~4$: After removing static preds" (errt-time)))
	  (dotimes (i (length actions))
	    (push (car (aref actions i)) just-actions))
	  (setq just-actions (reverse just-actions))
	  ;;		 (sayphi-sol this-sol)
	  ;; for efficiency purposes
	  (setq this-sol nil)
	  (dotimes (i (if previous-sol
			  (case (search-option-value :modify-problem search-options)
			    (from-probset (length *modified-probset*))
			    (last-goals 1)
			    (otherwise (search-option-value :max-modifications search-options)))
			  1))
	    (setq new-prob (if previous-sol
			       (modify-problem (search-option-value :modify-problem search-options) domain thisprob i (search-option-value :max-goals search-options)
					       just-actions goal-regression)
			       thisprob))
	    (when new-prob
	      (do ((at-least-one-solved-p nil (or (> number-solved 0) (not (eq (search-option-value :modify-problem search-options) 'modify-state))))
		   (number-solved 0 0)
		   (tries 0 (1+ tries))
		   (ehc-sol nil))
		  ((or at-least-one-solved-p (> tries 3)))
		(cond (*run-plain-sayphi-p*
		       ;; so that we have an execution of Sayphi with the new problem
		       (setq ehc-sol (solve-problem new-prob algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
						    rules-file use-rules-p search-options save-result count-prob experiment-var say-learning-p result-file just-actions))
		       ;;		(cond ((eq (solution-stop-reason ehc-sol) :recognized-dead-end))
		       (if (solution-found ehc-sol)
			   (incf number-solved))
		       (setq ehc-sol nil) ;; for mem reasons
		       )
		      (t (load-prob new-prob)))
		(push (list :goal-regression goal-regression) new-search-options)
		(push (list :actions actions) new-search-options)
		;; now, we solve it N times with ERRT
		(dolist (prob-p (if (listp p) p (list p)))
		  (dolist (prob-r (if (listp r) r (list r)))
		    (if (and (<= (+ prob-p prob-r) 1.0)
			     (not (and (= prob-p 1.0) (= prob-r 0.0)))) ;; this is supposed to behave as EHC
			;; 				      (not (and (= prob-p 0.0) (= prob-r 0.0)))	 ;; pure goal-reuse will not solve any problem
			;; 				      (not (and (= prob-p 0.0) (= prob-r 1.0)))) ;; pure action-reuse might not solve some problems
			;; p=0, r=1 is not stochastic (action-reuse)
			(dotimes (i (if (and (= prob-p 0.0) (= prob-r 1.0)) 1 (search-option-value :number-repetitions new-search-options)))
			  ;;		      (setf *say-solution* sayphi-sol)
			  (push (list :p prob-p) new-search-options)
			  (push (list :r prob-r) new-search-options)
			  (format t "~2%*************************************************************")
			  (format t "~%Solving problem ~a with ~a, p=~d, r=~d" (pathname-name new-prob) (search-option-value :algorithm new-search-options) prob-p prob-r)
			  (setq this-sol (plan :algorithm (search-option-value :algorithm new-search-options) :search-options new-search-options))
			  (if (solution-found this-sol) (incf number-solved))
			  (if *print-sol-p* (print this-sol))
			  (if *break-errt-p* (break))
			  (print-result-file save-result result-file count-prob new-prob (search-option-value :algorithm new-search-options) this-sol
					     *computation-avoided* prob-p prob-r
					     time-goal-regression (if (search-option-value :start-with-subgoal new-search-options) time-simpler-problem 0) just-actions)
			  (setq this-sol nil)
			  (free-mem)
			  (load-prob new-prob)))))))
	    ;; so that it modifies not the new one, but the original one
	    (load-prob thisprob))))))

(defun find-solvable-problem (thisprob domain domain-file search-options algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
				       rules-file use-rules-p save-result count-prob experiment-var say-learning-p result-file i p r)
  (if (<= i (search-option-value :max-relaxations search-options))
      (let* ((new-problem (modify-problem 'relax-problem domain thisprob i (search-option-value :max-goals search-options) nil nil))
	     (time-init (get-internal-run-time))
	     (new-solution (solve-problem new-problem algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
					  rules-file use-rules-p search-options save-result count-prob experiment-var say-learning-p result-file nil))
	     (time-simpler-problem (elapsed-time time-init)))
	(cond ((solution-found new-solution) new-solution)
	      (t (setq new-solution nil)
		 (free-mem)
		 ;; I give FF an opportunity, given in some domains Sayphi says that there are unreachable goals, when it is not the case
;; 		 (setf *ff-output-directory* (concatenate 'string *domain-dir*))
;; 		 (format t "~% Solving problem ~a with Metric-FF" (pathname-name new-problem))
;; 		 (execute-ff :domain-file domain-file :problem-file (concatenate 'string "probsets/" (pathname-name new-problem)))
;; 		 (setq new-solution (car (solutions-ff)))
		 (cond (new-solution)
		       (t (setq new-solution (find-solvable-problem new-problem domain domain-file search-options algorithm try2-search heuristic cost timeout depthbound
								    helpful w_g w_h max-solutions
								    rules-file use-rules-p save-result count-prob experiment-var say-learning-p result-file (1+ i) p r))
			  (setq time-simpler-problem (elapsed-time time-init))
			  (setq time-init (get-internal-run-time))
			  (if (and new-solution (solution-found new-solution))
			      (do* ((partial-plan (build-partial-plan (solution-path new-solution)))
				    (actions (if partial-plan (partial-plan-actions partial-plan)))
				    (goal-regression (if partial-plan (compute-goal-regression partial-plan (solution-path new-solution))))
				    (prob-p (if (listp p) p (list p)) (cdr prob-p))
				    (time-goal-regression (elapsed-time time-init))
				    (solution nil)
				    (just-actions nil))
				  ((or (null prob-p) (and solution (solution-found solution)))
				   (or (and solution (solution-found solution) solution)
				       (find-solvable-problem thisprob domain domain-file search-options algorithm try2-search heuristic cost timeout depthbound
							      helpful w_g w_h max-solutions
							      rules-file use-rules-p save-result count-prob experiment-var say-learning-p result-file (1+ i) p r)))
				(dotimes (i (length actions))
				  (push (car (aref actions i)) just-actions))
				(setq just-actions (reverse just-actions))
				(if *remove-static-preds* (setq goal-regression (remove-static-preds goal-regression)))
				(do* ((prob-r (if (listp r) r (list r)) (cdr prob-r)))
				    ((or (null prob-r) (and solution (solution-found solution))))
				  (when (and (<= (+ (car prob-p) (car prob-r)) 1.0)
					     (not (and (= (car prob-p) 1.0) (= (car prob-r) 0.0))))
				    (setq solution nil)
				    (setq new-solution nil)
				    (free-mem)
				    ;;		     (setf *say-solution* new-solution)
				    (load-prob thisprob)
				    (setq search-options (remove-if #'(lambda (apair) (or (eq (car apair) :p) (eq (car apair) :r))) search-options))
				    (push (list :p (car prob-p)) search-options)
				    (push (list :r (car prob-r)) search-options)
				    (pushnew (list :goal-regression goal-regression) search-options :test #'equal)
				    (pushnew (list :actions actions) search-options :test #'equal)
				    (format t "~% Solving problem ~a with ~a, p=~a, r=~a" (pathname-name new-problem) (search-option-value :algorithm search-options)
					    (car prob-p) (car prob-r))
				    (setq solution (plan :algorithm (search-option-value :algorithm search-options) :search-options search-options))
				    (if *print-sol-p* (print solution))
				    (print-result-file save-result result-file count-prob new-problem
						       (search-option-value :algorithm search-options) solution *computation-avoided* (car prob-p) (car prob-r)
						       time-goal-regression time-simpler-problem just-actions))))))))))))
;; (setq new-solution nil)
;; (free-mem)
  
(defun solve-problem (thisprob algorithm try2-search heuristic cost timeout depthbound helpful w_g w_h max-solutions
			       rules-file use-rules-p search-options save-result count-prob experiment-var say-learning-p result-file previous-actions)
  (format t "~% Solving problem ~a with ~a" (pathname-name thisprob) algorithm)
  (load-prob thisprob)
  (let ((this-sol (plan :algorithm algorithm :try2-search try2-search
					     :heuristic heuristic :cost cost 
					     :timeout timeout :depthbound depthbound
					     :helpful helpful :w_g w_g :w_h w_h
					     :max-solutions max-solutions
					     :rules-file rules-file :use-rules-p use-rules-p
					     :search-options nil))) ;; search-options)))
    (if *print-sol-p* (print this-sol))
    (cond ((eq algorithm 'ff)
	   (print-result-file save-result result-file count-prob thisprob 'ehc *ehc-solution* 0)
	   (print-result-file save-result result-file count-prob thisprob 'ff this-sol 0))
	  (t (print-result-file save-result result-file count-prob thisprob algorithm this-sol 0)))
    (when experiment-var
      (push (list-solution count-prob (pathname-name thisprob) this-sol) 
	    (gethash experiment-var *experiment-results*)))
    ;;       The function execute-learner must be redefined in the learner file
    (when say-learning-p (execute-learner))
    this-sol))

(defun load-prob (prob)
  (read-pddl-problem prob)
  (setf *complete-problem-file* (concatenate 'string (pathname-name prob) "." (pathname-type prob)))
  (setf *problem-file* (pathname-name prob))
  (setf *problem-dir* "probsets/"))

;;; ***************************************************************************************
;;;        Printing functions
;;; ***************************************************************************************

(defun my-print-node (node string)
  (when *trace-errt-p*
    (format t "~%~4$: " (errt-time))
    (my-pp-node node string)))

(defun my-pp-node (node string)
  (if (snode-p node)
      (format t "~a node ~a, ~a, h=~2$, d=~d, bt=~a" string (snode-number node)
	      (if (snode-applied-action node) (gaction-planaction (snode-applied-action node)))
	      (snode-h-value node) (snode-depth node) (getf (snode-plist node) :branch-type))
      (format t "~a node ~a" string node)))

(defun my-print-children (node)
  (when *trace-errt-p*
;;    (format t "~%Children: " node)
    (dolist (child (snode-children node))
      (my-print-node child (if (snode-closed child) "Closed child" "Child")))))

(defun pp-tree (tree &optional (string ""))
  (when (snode-p tree)
    (my-pp-node tree string)
    (dolist (child (snode-children tree))
      (terpri)
      (pp-tree child (concatenate 'string string " ")))))

(defun pp-nodes-list (list &optional (string "") (condensed-p nil))
  (dolist (node list)
    (cond (condensed-p (format t " ~a" (snode-number node)))
	  (t (terpri)
	     (my-pp-node node string)))))

(defun pp-errt-tree (tree &optional (condensed-p t))
  (when *trace-errt-p*
    (format t "~%~4$: Tree:" (errt-time))
    (if condensed-p
	(pp-nodes-list tree "" t)
	(pp-tree (find-if #'(lambda (node) (eq (snode-number node) 0)) tree)))))

(defun errt-time nil
   (elapsed-time (getf (problem-plist *current-problem*) :initial-search-time)))

;;; ***************************************************************************************
;;;        Coverage-based search
;;; ***************************************************************************************

;; search-options include :coverage and :length
;; anchors are the nodes from which there is a path to some tree
(defun cover-domain (init-node h-function cost-fn search-options &optional (problem *current-problem*))
  (declare (ignore cost-fn))
  (let ((helpful (search-option-value :helpful search-options))
	(visited (make-hash-table))
	(nodes (list init-node))
	(anchors (make-hash-table))
	(coverage (search-option-value :coverage search-options))
	(length (search-option-value :length search-options))
	(node nil))
    (push node (gethash (snode-hash-code node) visited))
    (dotimes (i (/ coverage length))
      (setq node (choose-one nodes))
      (push node (gethash (snode-hash-code node) anchors))
      (if (not (snode-children node))
	  (errt-expand-state node :helpful helpful))
      (dotimes (j length)
	(when node
	  (if (not (snode-children node))
	      (setq node (snode-parent node)))
	  (when node
	    (setq node (choose-one (snode-children node)))
	    (cond ((find node (gethash (snode-hash-code i-child) visited) :test #'equal-state)
		   (setq node (snode-parent node)))
		  (t (errt-expand-state node :helpful helpful)
		     (push node nodes)
		     (push node (gethash (snode-hash-code node) visited))))))))
    anchors))

;; the list of anchors should be given as search-options
(defun coverage-based-search (init-node h-function cost-fn search-options &optional (problem *current-problem*))
  (declare (ignore cost-fn))
  (let ((helpful (search-option-value :helpful search-options))
	(lookahead (search-option-value :lookahead search-options))
	(anchors (search-option-value :anchors search-options))
	(visited (make-hash-table))
	(node init-node)
	(next-node nil))
    (find-path (find-path node (closest-node-from-anchors node anchors)) goals)))
