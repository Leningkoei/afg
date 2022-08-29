;;;; 1-9
;;;; 2022/08/29

;;; 1.

;; (shadow '*)
;; (defparameter * 'star)


;;; 2.

(defparameter double
  #'(lambda (x)
      (* x 2)))

(defun double (x)
  (* x 2))


;;; 3.

(defun lesser (left right)
  (if (< left right) left right))

(defun greater (left right)
  (if (> left right) left right))


;;; 4.

(defun geo? (x y z)
  (= (* y y) (* x z)))


;;; 5.

(defun termial (number)
  (if (= number 0)
      0
      (+ number (termial (- number 1)))))
