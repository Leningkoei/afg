;;;; 2-5
;;;; 2022/09/01

(load #p"../algorithms/delist.lisp")

(defun ~each (procedure)
  (lambda (&rest arguments)
    (delist (map 'list procedure arguments))))
