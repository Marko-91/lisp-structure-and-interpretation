#lang racket

;recursive procedure that describes a recursive process
(define (factorial n)
    (if (= n 1) 
        1
        (* n (factorial (- n 1)))))

(factorial 5)

;recursive proceduer that describes a iterative process
(define (fact-iter n)
    (define (iter product counter)
        (if (> counter n)
            product
            (iter (* counter product) (+ counter 1))))
    (iter 1 1))
    

(fact-iter 5)

(factorial 2)

;process vs proceduers
;processes are the way of the evolutuion 
;proceduers are syntax