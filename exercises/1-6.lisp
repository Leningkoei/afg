;;;; 1-6
;;;; 2022/08/29

;;; 1.

#'(lambda (x)
    (* x x x))


;;; 2.

#'(lambda (c)
    (+ 32 (* c 9/5)))

(apply
 #'(lambda (c)
     (+ 32 (* c 9/5)))
 -15)


;;; 3.

#'(lambda (a n k)
    (* (+ k 1) (+ a (* k n 1/2))))

(apply
 #'(lambda (a n k)
     (* (+ k 1) (+ a (* k n 1/2))))
 3 7 4)


;;; 4.

;; something is an any, but list is a list of arguments


;;; 5.

;; what is the "meta number"? 0?

;; it return square of first


;;; 6.

#'(lambda (a b c)
    (values c b a))


;;; 7.

#'(lambda (list-a list-b)
    (list
     (apply #'+ list-a)
     (apply #'+ list-b)))
