;;;; 2-4
;;;; 2022/08/31

(load #p"../algorithms/receive.lisp")

(defun compose (outer inner)
  (lambda (&rest arguments)
    (receive (&rest intermediates)
        (apply inner arguments)
      (apply outer intermediates))))
