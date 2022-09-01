;;;; 2-5
;;;; 2022/09/01

;;; 1.

(defun >initial-and-next (&rest arguments)
  (values (car arguments) (cadr arguments)))


;;; 2.

(load #p"../algorithms/converse.lisp")

(defparameter result
  (=
   (apply (converse (converse #'expt)) 2 3 nil)
   (apply #'expt 2 3 nil)))

;; result is true


;;; 3.

(defun >rotate (first second third &rest others)
  (apply #'values third second first others))


;;; 4.

(defun >duplicate (argument)
  (values argument argument))

(load #p"../algorithms/pipe.lisp")

(shadow 'double)
(defparameter double
  (pipe #'>duplicate #'+))
