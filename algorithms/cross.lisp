;;;; 2-4
;;;; 2022/08/31

(load #p"../algorithms/delist.lisp")
(load #p"../algorithms/invoke.lisp")

;;; only can be used for `one operator procedure`!!!
;;; or you can modify `invoke` procedure, remove the `&rest`

(defun cross (&rest procedures)
  (lambda (&rest arguments)
    (delist (map 'list invoke procedures arguments))))
