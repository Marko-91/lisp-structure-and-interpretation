#lang racket
; #lang lazy

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; normal order application (lazy). => should evaluate
; applicative order application. => should enter infinite recursive loop (eager)
#|
  Quote: "To evalutate an *if* expression, the intepreter starts by eveluating the <predicate>
           part of the expression. If the <predicate> evals to true, the intepreter then evaluates
           the <consequent> and retuns its value. Otherwise it evaluates the <alternative> and returns
           its value."
|#