;;	fatorial
;;
;;	Implemente a função (fatorial n), que retorna o valor de n! (n fatorial).

(defun fatorial-acum(num acum)
	(cond
		((equal num 0) acum)
		(t (fatorial-acum (- num 1) (* acum num)))
	)
)

(defun fatorial(num)
	(fatorial-acum num 1)
)
;	testes
(print (fatorial 0))	;	1
(print (fatorial 1))	;	1
(print (fatorial 2))	;	2
(print (fatorial 5))	;	120