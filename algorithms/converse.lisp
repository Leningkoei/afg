;;;; 2-5
;;;; 2022/09/01

(load #p"../algorithms/keep-exch.lisp")
(load #p"../algorithms/pipe.lisp")
(load #p"../algorithms/sect.lisp")

;; (defparameter converse
;;   (sect #'pipe #'>exch <>))

(defun converse (&rest arguments)
  (apply (sect #'pipe #'>exch <>) arguments))

;; (defun bind-function (symbol function)
;;   (eval-when (:compile-toplevel) (sb-c:%compiler-defun symbol 't nil nil))
;;   (sb-impl::%defun symbol function))

;; (defmacro bind-function (symbol function)
;;   `(progn
;;      (eval-when (:compile-toplevel) (sb-c:%compiler-defun ',symbol t nil nil))
;;      (sb-impl::%defun ',symbol ,function)))

;; (bind-function converse (sect #'pipe #'>exch <>))
