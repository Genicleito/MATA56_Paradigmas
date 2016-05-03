(defun map (f l)
    (cond
        ((equal l Nil) Nil)
        (t (cons (f (car l)) (map f (cdr l))))))
(defun dobro (n) (* n 2))
(print (map dobro '(1 2 3 4 5)))