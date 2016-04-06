;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Soma-Lista - Aula: 6 de abril de 2016
; Paradigmas de Linguagens de Programação
; Por: Genicleito Gonçalves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun lista-cauda (lista soma)
	(cond
		((null lista) soma)
		(t (lista-cauda (cdr lista) (+ soma (car lista))))))
(defun soma-lista (lista)
	(lista-cauda lista 0))

; testes
(print (soma-lista '(1 2 3 4 5)))
(print (soma-lista '()))
(print (soma-lista '(1)))
(print (soma-lista '(1 2 3 4)))
