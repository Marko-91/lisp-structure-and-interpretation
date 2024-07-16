#lang racket

;defining variables
(define size 2)
size ;evaluates size
(* size 2)
(define pi 3.14)
(define radius 10)
(define circumference (* 2 radius pi))
circumference
;result of name-value mapping is stored in a global environment