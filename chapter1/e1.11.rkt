#lang racket
;1.11
; f recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

; (f 4)
; (+ (f 3) (* 2 (f 2)) (* 3 (f 1))
; (+ (f 2) (* 2 (f 1)) (f 0) (* 2 2) (* 3 1))
; (+ 2 2 0 4 3)
; => 11 

;f iterative
(define (fi n)
  (if (< n 3)
      n
  (fiter 2 1 0 n)))

(define (fiter a b c count)
   (if (< count 3)
       a
       (fiter (+ a (* 2 b) (* 3 c)) ; a <- f
               a ; b <- a
               b ; c <- b
               (- count 1))))


;count iterative
(define (count-iter n s)
  (if (= n 0)
      s
      (count-iter (- n 1) (+ s n))))

(f 7)
(fi 7)
;(count-iter 7 0)
