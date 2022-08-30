;;;; 2-3
;;;; 2022/08/30

;; (sect expt 2 <>)
;; 
;; is equal to
;; 
;; (lambda (x)
;;   (expt 2 x))

(defmacro sect (function &rest arguments)
  (labels
      ((find-and-change (rest-argument index)
         (cond
           ((null rest-argument) nil)
           ((equal '<> (car rest-argument))
            (cons
             `(nth ,index arguments)
             (find-and-change (cdr rest-argument) (+ index 1))))
           ('t
            (cons
             (car rest-argument)
             (find-and-change (cdr rest-argument) index))))))
    (let ((arguments-kai (find-and-change arguments 0)))
      `(lambda (&rest arguments)
         (,function ,@arguments-kai)))))
