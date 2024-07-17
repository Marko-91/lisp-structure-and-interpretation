#lang racket

;The substitution model for procedure applications
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (f a) (sum-of-squares (+ a 1) (* a 2)))

(f 10)
#|
applicative order (eager)
to apply a compound procedure,
evaulate the body of the procedure with each formal parameters replaced by arguments
(f 5)
(sum-of-squares (+ a 1) (* a 2)))
(sum-of-squares (+ 10 1) (* 10 2)))
(+ (square 11) (square 20))
(+ (* 11 11) (20 * 20))
521
|#

#|
normal order evaluation (lazy)
(f 5)
expand f -> (sum-of-squares (+ 10 1) (* 10 2)))
expand sum-of-squares (+ (square (+ 10 1)) (square (* 10 2)))
expand square (+ (* (+ 10 1) (+ 10 1)) (* (* 10 2) (* 10 2)))
reduce (+ (* 11 11) (*  20 20)))
(+ 121 400)
521
|#