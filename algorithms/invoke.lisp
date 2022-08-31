;;;; 2-3
;;;; 2022/08/31

(defparameter invoke
  #'(lambda (procedure &rest arguments)
      (apply procedure arguments)))
