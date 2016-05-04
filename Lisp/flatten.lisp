; flatten
; Crie uma função, (flatten lista), que “achata” a lista, isto é, retorna uma lista de átomos com a mesma sequência de átomos da lista profunda lista.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	Importar a função concatena
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	Fim da função concatena
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun flatten(lista)
	(cond
		;	Lista vazia ou final da lista
		((null lista) Nil)
		;	Primeiro elemento da lista é uma lista
		((consp (car lista)) (concatena (flatten (car lista)) (flatten (cdr lista))))
		;	Primeiro elemento é um átomo...
		(t (cons (car lista) (flatten (cdr lista))))
	)
)