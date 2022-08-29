;;;; 1-4
;;;; 2022/08/29

;;; 1. -11
;;; 2. -2
;;; 3. -5
;;; 4.

;;; 4.1

(defun average (&rest numbers)
  "number -> ... -> number"
  (/ (apply #'+ numbers) 2))

(defun prove-4-1 ()
  (equal
   (=
    (+ 1 (+ 2 3))
    (+ (+ 1 2) 3))
   (=
    (average 1 (average 2 3))
    (average (average 1 2) 3))))

;;; 4-2

;; if (op x y) => y for any y, and x must be a constant, then x is meta of op
;; (average x x) => x for any x, so x is meta of op, but x is a variable, so
;; average has no meta.

;; alternative, 0 + any = any;
;;              (? + any) / 2 = any =>
;;                ? = any,
;; so average has no meta.

;;; 4-3. yes

;;; 5.

;;; 5-1. yes

;;; 5-2. no

;;; 5-3. yes? If there exists a even number in numbers, the function will return
;;; 0?
