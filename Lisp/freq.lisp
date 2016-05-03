;	Função (freq x l) (indica quantas vezes o elemento x aparece na lista l)
(defun freq(x l)
	(cond
		((null l) 0)
		((equal x (car l)) (+ 1 (freq x (cdr l))))
		(t (freq x (cdr l)))	;	ou	(+ 0 (freq x (cdr l)))
	)
)

(print (freq 1 '()))	;	0
(print (freq 2 '(2 3 (2 8) 2 1 2)))	;	3
(print (freq 3 '(1 2 3)))	;	1
(print (freq 1 '(1 1)))	;	2