;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Soma-Lista - Aula: 6 de abril de 2016
; Paradigmas de Linguagens de Programação
; Por: Genicleito Gonçalves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fatorial-cauda (n acum)
	(cond
		((<= n 1) acum)
		(t (fatorial-cauda (- n 1) (* n acum)))))

(defun fatorial (n)
	(fatorial-cauda n 1))

(print  (fatorial 3))
(print  (fatorial 5))
(print  (fatorial 6))
