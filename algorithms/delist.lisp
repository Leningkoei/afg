;;;; 1-6
;;;; 2022/08/29

(defun delist (list)
  (apply #'values list))

(defparameter delist
  (lambda (list)
    (apply #'values list)))
