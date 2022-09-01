;;;; 2-5
;;;; 2022/09/01

(load #p"../algorithms/delist.lisp")

(defparameter >all-but-initial
  (lambda (&rest arguments)
    (apply delist (cdr arguments))))
