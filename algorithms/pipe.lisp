;;;; 2-4
;;;; 2022/08/31

(load #p"receive.lisp")

(defun pipe (earlier later)
  (lambda (&rest arguments)
    (receive (&rest intermediates)
        (apply earlier arguments)
      (apply later intermediates))))
