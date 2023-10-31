#lang racket
;Define a procedure that takes 3 numbers as arguments and returns the sum of the squares of two larger numebers
(define x 1)
(define y 1)
(define z 4)

(define (square x)
  (* x x))
(define (sumOfSquares x y z)
  (cond ((> x y) (if (> y z) (+ (square x) (square y)) (+ (square x) (square z))))
        ((> y z) (if (> x z) (+ (square y) (square x)) (+ (square y) (square z))))
        ((> z x) (if (> x y) (+ (square z) (square x)) (+ (square z) (square y))))))


(sumOfSquares x y z)