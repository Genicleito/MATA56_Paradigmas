;	Implemente a função (soma-lista lista), que retorna a soma dos elementos da lista. (Usando Acumulador)

(defun soma-lista-acum (lista acum)
	(cond
		((null lista) acum)
		(t (soma-lista-acum (cdr lista) (+ acum (car lista))))
	)
)

(defun soma-lista (lista)
	(soma-lista-acum lista 0)
)
;	testes
(print (soma-lista '()))	;	0
(print (soma-lista '(1)))	;	1
(print (soma-lista '(3 2 0)))	;	5
(print (soma-lista '(0)))	;	0