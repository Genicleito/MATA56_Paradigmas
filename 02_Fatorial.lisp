;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Soma-Lista - Aula: 6 de abril de 2016
; Paradigmas de Linguagens de Programação
; Por: Genicleito Gonçalves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fatorial-cauda (n)
	(cond
		((<= n 1) 1)
		(t (* n (fatorial (- n 1))))))

(defun fatorial (n)
	(fatorial-cauda n))

(print  (fatorial 3))
(print  (fatorial 5))
(print  (fatorial 6))
