#lang racket

;proceduers as black box abstractions

;guess and x are local names for the arguments of the procedure
;guess and x are bound to the good-enough procedure
;they are local to the good-enough procedure

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)
  )

(define (square x) (* x x))

(good-enough? 1.4 2)

;internal definitions and block structure
;good-enough?, improve, average are all scoped to the sqrt procedure
;that means we can abstract the local procedure names and don't worry about name conflicts
;this can also define packages that are encapsulated
;other progammers can safely create their own 'good-enough?' and not have name conflicts
(define (sqrt x)

    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))

    (define (improve guess)   
        (average guess (/ x guess)))

    (define (average x y)
        (/ (+ x y) 2.0))

    (define (square num) (* num num))
    
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))

    (sqrt-iter 1.0)
)

(sqrt 2)