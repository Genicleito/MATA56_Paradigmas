; subst
; Crie uma função, (subst x y expr), que substitua as ocorrências de x por y na expressão expr, usando recursão profunda.
(defun subst(x y expr)
	(cond
		;	Lista vazia
		((null expr) Nil)
		;	Primeiro elemento é uma lista
		((consp (car expr)) (cons (subst x y (car expr)) (subst x y (cdr expr))))
		;	Primeiro elemento é um átomo... se for x...
		((equal x (car expr)) (cons y (subst x y (cdr expr))))
		;	Primeiro elemento é um átomo mas não é x...
		(t (cons (car expr) (subst x y (cdr expr))))
	)
)
;	testes
(print (subst 1 0 '(1 (1 3 (5 1)))))	;	(0 (0 3 (5 0)))
