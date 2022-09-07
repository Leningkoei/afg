;;;; 2-4
;;;; 2022/08/31

(load "../algorithms/cross.lisp")
(load "../algorithms/receive.lisp")
(load "../algorithms/sect.lisp")

;;; 1.

(load "../algorithms/pipe.lisp")

(defun pipe-3 (eariler middler later)
  (lambda (&rest arguments)
    (receive (&rest intermediates)
        (apply (pipe eariler middler) arguments)
      (apply later intermediates))))


;;; 2.

(defun compose-3 (inner border outer)
  (lambda (&rest arguments)
    (receive (&rest border)
        (receive (&rest inner)
            (apply inner arguments) ; <- this form can't read `inner` which is outside
          (apply border inner))
      (apply outer border))))


;;; 3.

(load "../algorithms/delist.lisp")

(defun sum-of-reciprocals* (&rest arguments)
  (apply #'+ (map 'list (sect #'/ 1 <>) arguments)))

(defun sum-of-reciprocals (&rest arguments)
  (apply (pipe-3 #'map #'delist #'+) (list 'list (sect #'/ 1 <>) arguments)))


;;; 4.

(load #p"../algorithms/dispatch.lisp")

(defun harmonic-mean (a b)
  (let ((c (* 2 a b))
        (d (+ a b)))
    (/ c d)))

(defun harmonic-mean (a b)
  (/ (* 2 a b) (+ a b)))

(defun harmonic-mean (a b)
  (apply
   (pipe (dispatch (sect #'* 2 <> <>) (sect #'+ <> <>)) #'/)
   (list a b)))
  ;; (receive (&rest arguments)
  ;;     (apply (dispatch (sect #'* 2 <> <>) (sect #'+ <> <>)) (list a b))
  ;;   (apply #'/ arguments)))
