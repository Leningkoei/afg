;;;; 1-10
;;;; 2022/08/29

;;; 1.

(defun average (x y)
  (/ (+ x y) 2))
(let ((mu (average 1/3 3/2))
      (good (* 1/3 3/2)))
  (< mn good))


;;; 2.

;; in fact, let ... is a IIFE of a lambda expression

(let ((a 'a))
  (print a))

;; is equal to

(#'(lambda (a)
     (print a))
 'a)

;; it is also can explain why we can't call recursive function

;; scheme
;; (let ((test (lambda () (test))))
;;   (test))

;; is equal to

;; scheme
;; ((lambda (test)
;;    (test))
;;  (lambda () (test)) <- Here is wrong!
;; )

;; So in this question, we can't use name at the arguments of IIFE lambda
;; expression as use them inner the body of IIFE lambda expression.

;; (let ((a 'a)
;;       (b  a))
;;   (print b))

;; is equal to

;; (#'(lambda (a b)
;;      (print b))
;;  ('a a))


;;; 3.

(defun halve (integer)
  (multiple-value-bind (quotient remainder)
      (floor integer 2)
    (declare (ignore remainder))
    quotient))


;;; 4.

(defun greatest-odd-divisor (n)
  (if (oddp n)
      n
      (greatest-odd-divisor (/ n 2))))

(greatest-odd-divisor 702464) ; => 343


;;; 5.

(defun reverse-digits (n)
  (if (not (<= 10 n 99))
      (error (format nil "Your input should `10 <= ~A <= 99`" n))
      (multiple-value-bind (ten one)
          (floor n 10)
        (+ (* 10 one) ten))))
