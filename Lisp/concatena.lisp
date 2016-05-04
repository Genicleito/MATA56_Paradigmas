; concatena
; Implemente a função (concatena l1 l2), que recebe duas listas, l1 e l2, e retorna uma lista com os elementos de l1 na sequência, seguidos dos elementos de l2 na sequência. Exemplo: (concatena '(m u n) '(d o)) ==> '(m u n d o)
(defun inverte-acum(lista acum)
	(cond
		((null lista) acum)
		(t (inverte-acum (cdr lista) (cons (car lista) acum)))
	)
)

(defun inverte(lista)
	(inverte-acum lista '())
)

(defun concatena-acum(listaInv acum)
	(cond
		((null listaInv) acum)
		(t (concatena-acum (cdr listaInv) (cons (car listaInv) acum)))
	)
)

(defun concatena(l1 l2)
	(concatena-acum (inverte l1) l2)
)

(print (concatena '() '()))	;	()
(print (concatena '() '(1)))	;	(1)
(print (concatena '(1) '()))	;	(1)
(print (concatena '(1) '(1)))	;	(1 1)
(print (concatena '(1 2 3) '(4 5 6)))	;	(1 2 3 4 5 6)
(print (concatena '(1 a 2 b) '(3 c 4 d)))	;	(1 a 2 b 3 c 4 d)