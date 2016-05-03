;	Função (filter f l) (retorna uma cópia da lista l contendo apenas os elementos para os quais a função f retorna true)
(defun filter (f l)
  (cond
	((null l) '())
	((f (car l)) (cons (car l) (filter f (cdr l))))
	(t (filter f (cdr l)))
   )
 )

; testes
(print
   (filter
      (lambda (x) (< x 10))
      '(3 12 6 15 9)))
