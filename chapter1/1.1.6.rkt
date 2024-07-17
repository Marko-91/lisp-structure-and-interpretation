#lang racket

;case analysis

(define (abs x)
  (cond ((< x 0) (- x))
        ((= x 0) x)
        ((> x 0) x)))


(define (abs-if-else x)
  (cond ((< x 0) (- x))
        (else x)
        ))

(define (abs-if x)
  (if (< x 0) (- x) x)
  )

(define (>= x y)
  (or (> x y) (= x y))
  )

(abs-if -1)
(abs -1)
(abs-if-else -1)
(>= 56 56)

;logical operators

(and true false)
(or true false)
(not false)