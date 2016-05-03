;	Função (atom-list l) (indica se todos os elementos de l são átomos
(defun atom-list(l)
	(cond
		((null l) t)
		(t (and (atom (car l)) (atom-list (cdr l)) ))
	)
)
; testes
(print (atom-list '(a 2 c)))  ; t
(print (atom-list '()))   ; t
(print (atom-list '(a b (c d)))) ; f
(print (atom-list '((a b))  )) ; f