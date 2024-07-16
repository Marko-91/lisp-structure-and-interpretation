#lang racket

;procedure definitions 

(define (square x) (* x x))
(square 5)

;(define (<name> <formal params>) (<body>))
(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 5 5)

