;;;; 2-5
;;;; 2022/09/01

(load #p"../algorithms/modify-each.lisp")
(load #p"../algorithms/pipe.lisp")

(defun compare-by (procedure comparer)
  (pipe (~each procedure) comparer))
