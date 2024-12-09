#lang racket

(define (pascal row index)

  (define (calculate-number)
    (if (or (= index 0) (= index row))
        1
        (+ (pascal (- row 1) index) (pascal (- row 1) (- index 1)))))

  (if (= row 5)
      -1 ;artifical break
      ((if (= row index)
           (pascal (+ row 1) 0)
           (calculate-number))
       (pascal row index))))

(pascal 0 0)
