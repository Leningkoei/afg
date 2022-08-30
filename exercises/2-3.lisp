;;;; 2-3
;;;; 2022/08/30

;;; 1.

(load #p"../algorithms/sect.lisp")

(defun reciprocal-of-product (&rest arguments)
  (apply #'* (map 'list (sect / 1 <>) arguments)))


;;; 2.

;; It receive 1 argument; return a procedure

;; return

#'(lambda (&rest remaining)
    (apply #'floor 60 remaining))
