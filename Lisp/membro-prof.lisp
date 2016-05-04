; membro-prof
; Implemente a função (membro-prof x expr), que indica se x aparece na expressão expr, que pode ser um átomo ou uma lista (possivelmente profunda).

(defun membro-prof(x lista)
	(cond
		;	A lista é vazia
		((null lista) Nil)
		;	O primeiro elemento da lista é uma lista
		((consp (car lista)) (or (membro-prof x (car lista)) (membro-prof x (cdr lista))))
		;	O primeiro elemento é um átomo... Será que é o x ?
		(t (or (equal x (car lista)) (membro-prof x (cdr lista))))
	)
)

(print (membro-prof 5 '(1 2 3)))	;	f
(print (membro-prof 5 '(1 2 3 (4 5))))	;	t
(print (membro-prof 5 '(1 2 (3 (5 4)))))	;	t
(print (membro-prof '() '(1 2 3)))	;	f
(print (membro-prof '() '(1 () 2 3)))	;	t
(print (membro-prof '() '(())))	;	t
