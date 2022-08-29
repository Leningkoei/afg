;;;; 1-7
;;;; 2022/08/29

;;; 1.

#'(lambda (a b)
    (not (= a b)))


;;; 2.

#'(lambda (a b)
    (= (* a b) 1))


;;; 3.

#'(lambda (a b c x)
    (= (* x x) (+ (* a x x) (* b x) c)))
