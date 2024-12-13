#lang racket

;; fast-exponent: Number Number -> Number
;; Computes b raised to the power of n using a fast exponentiation algorithm.
;; This algorithm reduces the number of multiplications by using the properties of exponents.
;; - If n is 0, the result is 1 (base case).
;; - If n is even, the result is the square of b raised to the power of n/2.
;; - If n is odd, the result is b multiplied by b raised to the power of n-1.
(define (fast-exponent b n)
  (cond
    [(= n 0) 1]
    [(even? n) (sqr (fast-exponent b (/ n 2)))]
    [else (* b (fast-exponent b (- n 1)))]))

(fast-exponent 2 20)
