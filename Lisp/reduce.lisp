;	Função (reduce f l i) (aplica a função f sobre um acumulador para cada valor da lista l, da esquerda pra direita, para reduzi-la a um único valor; o valor inicial do acumulador é i)
(defun reduce(f l i)
	(cond
		((null l) i)
		(t (reduce f (cdr l) (f i (car l))))
	)
)

; testes
(print (reduce + '(1 2 3) 0))
(print (reduce + '() 0))
(print (reduce + '(1 1 1 1) 0))