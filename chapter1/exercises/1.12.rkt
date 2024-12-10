#lang racket

(define (pascal_generate row index)

  (define (calculate-number)
    (if (or (= index 0) (= index row))
        1
        (+ (pascal_generate (- row 1) index) (pascal_generate (- row 1) (- index 1)))))

  (if (= row 5)
      -1 ;artifical break
      (if (= row index)
          (pascal_generate (+ row 1) 0)
          (calculate-number))))

(define (pascal row index)
  (if (or (= index 0) (= index row))
      1
      (+ (pascal (- row 1) index) (pascal (- row 1) (- index 1)))))

;(pascal 0 0)
(pascal 3 3)
