;;;; 2-5
;;;; 2022/09/01

(defun ~initial (procedure)
  #'(lambda (initial &rest others)
      (apply #'values (apply procedure initial nil) others)))
