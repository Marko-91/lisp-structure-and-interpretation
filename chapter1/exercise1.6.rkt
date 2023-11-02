#lang racket

(define (sqrtIter guess x)
(if (goodEnough? guess x) ;predicate
    guess ;thenClause
    (sqrtIter (improve guess x) ;elseClause
              x)))

(define (cubeIter guess x)
(if (goodEnoughForCube? guess x) ;predicate
    guess ;thenClause
    (cubeIter (improveCube guess x) ;elseClause
              x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (improveCube guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (average x y)
  (/ (+ x y) 2))

(define (goodEnough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (goodEnoughForCube? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrtIter 1.0 x))

(define (cubeRoot x)
  (cubeIter 1.0 x))

(define (myIf predicate thenClause elseClause)
  (cond (predicate thenClause)
        (else elseClause)))

; (sqrt 0.00025)

(cubeRoot 8)

; (improveCube 1.0 8)