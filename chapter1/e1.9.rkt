#lang racket
(define (add1 a b)
  (if (= a 0)
      b
      (inc (add1 (dec a) b))))

(define (add2 a b)
  (if (= a 0)
      b
      (add2 (dec a) (inc b))))

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(add1 1 -2)

; add1
; (add1 4 5)
; (inc (add1 3 5))
; (inc (inc (add1 2 5)))
; (inc (inc (inc (add1 1 5))))
; (inc (inc (inc (inc (add1 0 5)))))
; (inc (inc (inc (inc 6))))
; (inc (inc (inc 7)))
; (inc (inc 8))
; (inc 9)
; 10
; add1 is recursive

; add2
; (add2 4 5)
; (add2 3 6)
; (add2 2 7)
; (add2 1 8)
; (add2 0 9)
; 9
; add2 is iterative