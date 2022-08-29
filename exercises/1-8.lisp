;;;; 1-8
;;;; 2022/08/29

;;; 1.

#'(lambda (number)
    (if (< number 0)
        (- number)
        number))


;;; 2.

#'(lambda (x y)
    (if (< x y)
        x
        y))


;;; 3.

#'(lambda (x y z)
    (or (<= x y z) (<= z y x)))


;;; 4.

#'(lambda (x y)
    (if (or
         (and (evenp x) (evenp y))
         (and (oddp  x) (oddp  y)))
        1
        0))
