(defparameter *small* 1)
(defparameter *big* 100)
(defun guess-a-number ()
  (ash (+ *small* *big*) -1))
(defun bigger ()
  (setf  *big* (1- (guess-a-number)))
  (guess-a-number))
(defun smaller ()
  (setf *small* (1+ (guess-a-number)))
  (guess-a-number))
(defun start-over () 
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-a-number))