;;;; 2-4
;;;; 2022/08/31

(load #p"../algorithms/delist.lisp")
(load #p"../algorithms/sect.lisp")

(defun dispatcher (&rest procedures)
  #'(lambda (&rest arguments)
      (delist (map 'list (sect apply <> arguments) procedures))))
