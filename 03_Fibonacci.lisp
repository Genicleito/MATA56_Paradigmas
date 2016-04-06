;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Soma-Lista - Aula: 6 de abril de 2016
; Paradigmas de Linguagens de Programação
; Por: Genicleito Gonçalves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fib-acum (n a b)
  (cond
    ((= n 0) a)
    ;(t (((fib-acum (- n 1))))
    ;(+ (fib (- n 1)) (fib (- n 2)))))
    (fib-acum (- n 1) b (+ a b)))

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
