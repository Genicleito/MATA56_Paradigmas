;	Função (is-set l) (indica se l é um conjunto, isto é, uma lista na qual todos os elementos são distintos) – use a função member:

(defun member(x l)
	(cond
		((null l) Nil)
		(t (or (equal x (car l)) (member x (cdr l))))
	)
)

(defun is-set(lista)
	(cond
		((null lista) t)
		((member (car lista) (cdr lista)) Nil)
		(t (is-set (cdr lista)))
	)
)
; testes
(print (is-set '())) ; t
(print (is-set '(1))) ; t
(print (is-set '(1 2 3))) ; t
(print (is-set '(1 1 2))) ; Nil
(print (is-set '(1 2 1))) ; Nil
(print (is-set '(1 2 3 2 5))) ; Nil
