#lang racket
;; pascal_generate: Number Number -> Number
;; Generates the value at a specific position in Pascal's triangle.
;; row: The row number in Pascal's triangle (0-indexed).
;; index: The index within the row (0-indexed).
;; Returns: The value at the specified position in Pascal's triangle.
(define (pascal_generate row index)

  ;; calculate-number: -> Number
  ;; Helper function to calculate the value at the current position.
  ;; Returns: The value at the current position in Pascal's triangle.
  (define (calculate-number)
    (if (or (= index 0) (= index row))
        1
        (+ (pascal_generate (- row 1) index) (pascal_generate (- row 1) (- index 1)))))

  (if (= row 5)
      -1 ;artifical break
      (if (= row index)
          (pascal_generate (+ row 1) 0)
          (calculate-number))))

;; pascal: Number Number -> Number
;; Computes the value at a specific position in Pascal's triangle.
;; row: The row number in Pascal's triangle (0-indexed).
;; index: The index within the row (0-indexed).
;; Returns: The value at the specified position in Pascal's triangle.
(define (pascal row index)
  (if (or (= index 0) (= index row))
      1
      (+ (pascal (- row 1) index) (pascal (- row 1) (- index 1)))))

;(pascal 0 0)
(pascal 3 3)
