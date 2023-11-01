#lang racket

(define a 5)
(define b -5)

(define (aPlusAbsB a b)
  ((if (> b 0) + -) a b))

(aPlusAbsB a b) ; out => 10