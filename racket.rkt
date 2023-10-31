#lang racket
(define (square x)
  (* x x))

(define (sumOfSquares x y)
  (+ (square x) (square y)))

;(define (abs x)
;  (cond ((> x 0) x)
;        ((< x 0) (- x))
;        ((= x 0) 0))
;  )

;(define (abs x)
 ; (cond ((< x 0) (- x))
  ;      (else x))
  ;)

(define (abs x)
 (if (< x 0)
     (- x)
     x))
(abs (- 10))