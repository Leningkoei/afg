;;;; 1-10
;;;; 2022/08/31

(defmacro receive (vars value-form &body body)
  `(multiple-value-call
       #'(lambda ,vars
           ,@body)
     ,value-form))
