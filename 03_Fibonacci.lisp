;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Soma-Lista - Aula: 6 de abril de 2016
; Paradigmas de Linguagens de Programação
; Por: Genicleito Gonçalves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fib-acum (n fib1 fib2)
  (cond
    ((= n 0) fib2)
    (t (fib-acum (- n 1) fib2 (+ fib1 fib2)))))

(defun fibonacci(n)
  (fib-acum n 0 1))

; testes
(print (fibonacci(1)))
(print (fibonacci(2)))
(print (fibonacci(3)))
(print (fibonacci(4)))
(print (fibonacci(5)))
(print (fibonacci(6)))
(print (fibonacci(40)))
