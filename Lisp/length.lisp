;	Função (length l) (retorna o comprimento da lista l, isto é, seu número de elementos):
(defun length(l)
	(cond
     ((null l) 0)
     (t (+ 1 (length (cdr l)))))
 )
; testes
(print (length '()))
(print (length '(1)))
(print (length '(1 2 3)))
