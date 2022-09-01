;;;; 2-5
;;;; 2022/09/01

(defun ~next (procedure)
  #'(lambda (initial next &rest arguments)
      (apply #'values initial (apply procedure next nil) arguments)))
