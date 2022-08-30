;;;; 2-2
;;;; 2022/08/30

(load #p"../algorithms/delist.lisp")

(defun constant (&rest fixed-values)
  (lambda (&rest ignoreds)
    (declare (ignore ignoreds))
    (delist fixed-values)))

;;; 1.

(defun values? (&rest ignoreds)
  (apply (constant 't) ignoreds))

(defun nameless (&rest ignoreds)
  (apply (constant 't nil) ignoreds))


;;; 2.

(defun argument-count (&rest arguments)
  (length arguments))
