(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

; a * b = \sum_{i=1}^{b} a = 2 * \sum_{i=1}^{b/2} a = 4 * \sum_{i=1}^{b/4} a

(define (fast-mult a b) 
    (define (fast-mult-helper a b acc) 
        (cond 
            ((= b 1) (+ acc a))
            ((even? b) (fast-mult-helper (double a) (halve b) acc))
            (else (fast-mult-helper a (- b 1) (+ acc a)))
        )
    )
    (fast-mult-helper a b 0)
)

(fast-mult 3 5)
(fast-mult 3 7)
(fast-mult 3 8)
(fast-mult 3 9)
(fast-mult 13 9)
(fast-mult 23 9)
(fast-mult 33 9)