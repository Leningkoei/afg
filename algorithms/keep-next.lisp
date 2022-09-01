;;;; 2.5
;;;; 2022/09/01

;; (defparameter >next
;;   (lambda (&rest arguments)
;;     (cadr arguments)))

(defun >next (&rest arguments)
  (cadr arguments))
