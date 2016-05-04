; inverte
; Implemente a função (inverte lista), que retorna uma lista com os mesmos elementos do argumento, porém em ordem inversa. Exemplo: (inverte '(q w e)) ==> '(e w q)

(defun inverte-acum(lista acum)
	(cond
		((null lista) acum)
		(t (inverte-acum (cdr lista) (cons (car lista) acum)))
	)
)

(defun inverte(lista)
	(inverte-acum lista '())
)
;	testes
(print (inverte '()))	;	()
(print (inverte '(1)))	;	(1)
(print (inverte '(1 2)))	;	(2 1)
(print (inverte '(a 5 2 9 4 b c)))	;	(c b 4 9 2 5 a)