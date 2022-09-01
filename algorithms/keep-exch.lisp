;;;; 2-5
;;;; 2022/09/01

(defun >exch (initial next &rest others)
  (apply #'values next initial others))
