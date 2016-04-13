(defun subst-prof (x y expr)
  (cond
    ((null expr) expr)
    ; 1o elem é uma lista não-vazia
    ((consp (car expr))
      (cons (subst-prof x y (car expr))
      (subst-prof x y (cdr expr))))
    
    ; 1o elemento é um átomo
    ((equal x (car expr)) 
      (cons y (subst-prof x y (cdr expr)))) 
    (t (cons (car expr) (subst-prof x y (cdr expr))))))

; testes
(print (subst-prof 1 2 '(1 2 3)))	;	2 2 3
(print (subst-prof 1 2 '(1 (2 3))))	;	2 (2 3)
(print (subst-prof 1 2 '(1 2 (1 3 2 1) 3)))	;	(2 2 (2 3 2 2) 3)
(print (subst-prof 1 2 '(1 2 ((1 3) 2 1) 3)))	;	(1 2 ((2 3) 2 2) 3)
