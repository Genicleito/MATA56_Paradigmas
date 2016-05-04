;;	fibonacci
;;
;;	Implemente a função (fibonacci n), que retorna o n-ésimo número da sequência de Fibonacci.
(defun fib-acum (n temp acum)
	(cond
		((= n 0) acum)
		(t (fib-acum (- n 1) (acum) (+ temp acum)))
	)
)

(defun fibonacci (n)
	(fib-acum n 1 0)
)
;	testes
(print (fibonacci 1))	;	1
(print (fibonacci 2))	;	1
(print (fibonacci 3))	;	2
(print (fibonacci 4))	;	3
(print (fibonacci 5))	;	5
(print (fibonacci 6))	;	8
(print (fibonacci 0))	;	0