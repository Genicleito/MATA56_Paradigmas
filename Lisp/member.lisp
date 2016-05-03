;	Função (member x l) (indica se o elemento x está presente na lista l):
(defun member(x l)
	(cond
		((null l) Nil)
		(t (or (equal x (car l)) (member x (cdr l))))
	)
)

;	testes
(print (member 2 '()))	;	f
(print (member 2 '(1 2 3)))	;	t
(print (member 1 '(3 4 1)))	;	t
(print (member 32 '(32)))	;	t
(print (member 7 '(1 2 3 (9 5 7))))	;	f
(print (member 7 '(1 2 3 (9 5 7) 7)))	;	t