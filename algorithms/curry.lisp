;;;; 2-3
;;;; 2022/08/30

(defun curry (procedure)
  (lambda (initial)
    (lambda (&rest remaining)
      (apply procedure initial remaining))))
