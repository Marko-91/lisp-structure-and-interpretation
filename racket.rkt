#lang racket
#|
(define (square x)
  (* x x))

(define (sumOfSquares x y)
  (+ (square x) (square y)))

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0))
  )

(define (abs x)
 (cond ((< x 0) (- x))
       (else x))
 )



(define (abs x)
 (if (< x 0)
     (- x)
     x))
(abs (- 10))
|#

;(+ 3 5 (* 3 5))

;(= 4 4 )

(define a 3)
(define b 4)
#|
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
|#

#|
(+ 2 (if (< b a)
         b
         a ))
|#







