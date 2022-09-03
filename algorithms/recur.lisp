;;;; 2-6
;;;; 2022/09/03

(load #p"../algorithms/receive.lisp")

(defun recur (base? terminal simplify integerate)
  (labels
      ((recurrer (guide)
         (if (apply base? guide nil)
             (apply terminal guide nil)
             (receive (current next)
                 (apply simplify guide nil)
               (receive (&rest recursive-results)
                   (recurrer next)
                 (apply integerate current recursive-results))))))))
