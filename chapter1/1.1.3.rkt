#lang racket

;evaluation of combination (recursive)
;1. evaluate subexpressions of combinations
;2. apply the procedure that is the value of the leftmost subexpression
; (the operator) to the arguments that are the values of other subexpressions (to operands) 

;evaluation applies 4 times
(* (+ 2 (* 4 6))
   (+ 3 5 7))

;the value of numberals are numbers i.e "2" -> number 2
;the value of built in operators are machine instructions that carry out corresponding operations
;the value of other names are the objects in the global environment

;note that define is not a combination
(define x 5) ; "special form" - different specialized rule for evaluation
x




