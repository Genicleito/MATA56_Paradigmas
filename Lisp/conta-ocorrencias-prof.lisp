; conta-ocorrencias-prof
; Modifique a função anterior para contar o número de ocorrências de x na expressão expr, usando recursão profunda
;	==>	Por: Genicleito Gonçalves	<==

(defun conta-ocorrencias-prof(x lista)
	(cond
		;	A lista é vazia
		((null lista) 0)
		;	O primeiro elemento da lista é uma lista
		((consp (car lista)) (+ (conta-ocorrencias-prof x (car lista)) (conta-ocorrencias-prof x (cdr lista))))
		;	O primeiro elemento é um átomo... Caso seja x...
		((equal x (car lista)) (+ 1 (conta-ocorrencias-prof x (cdr lista))))
		;	O Primeiro elemento não era x, vamos procurar no restante da lista
		(t (conta-ocorrencias-prof x (cdr lista)))
	)
)

; testes
(print (conta-ocorrencias-prof j '(c ((b a)) (d (e (c))) g)))	;	0
(print (conta-ocorrencias-prof c '(c ((b a)) (d (e (c))) g)))	;	2