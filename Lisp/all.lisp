;	Função (all f l) ==> (indica se a função f retorna verdadeiro para todos os elementos de l):
(defun all(f l)
	(cond
		((null l) t)
		(t (and (f (car l)) (all f (cdr l))))
	)
)
; testes
(defun par (x) (= (% x 2) 0))
(print (all par '()))
(print (all par '(2 4 6)))
(print (all par '(1 2 4 6)))
(print (all par '(2 4 6 9)))