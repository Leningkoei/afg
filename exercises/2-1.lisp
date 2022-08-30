;;;; 2-1
;;;; 2022/08/30

;;; 1.

(defun toggle-list (&rest booleans)
  (map 'list #'not booleans))


;;; 2.

(defun unbundled-products (list1 list2)
  (map 'list #'* list1 list2))

;; (defun unbundled-products (list1 list2)
;;   (if (null list1)
;;       nil
;;       (cons
;;        (* (car list1) (car list2))
;;        (unbundled-products (cdr list1) (cdr list2)))))


;;; 3.

(load #p"../algorithms/delist.lisp")

(defun wrap-each (&rest arguments)
  (delist (map 'list #'list arguments)))
