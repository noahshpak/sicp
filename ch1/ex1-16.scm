; iterative exponentiation by factoring
; (b^(n/2))^2 = (b^2)^(n/2)

(define (square x) (* x x))
(define (even? x) (= (remainder x 2) 0))



(define (fast-expt b n)
    (cond 
        ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))
    )
)

(define (fast-expt b n)
    (define (fast-expt-helper b n a)
        (cond
            ((= n 0) a)
            ((even? n) (fast-expt-helper (square b) (/ n 2) a))
            (else (fast-expt-helper b (- n 1) (* b a)))
        )
    )
    (fast-expt-helper b n 1)
)

(fast-expt 2 2)
(fast-expt 2 3)
(fast-expt 2 4)
(fast-expt 2 5)
(fast-expt 2 6)
(fast-expt 2 7)
(fast-expt 2 8)
(fast-expt 2 9)
(fast-expt 2 10)
(fast-expt 2 100)
(fast-expt 2 1000)

(fast-expt 3 0)
(fast-expt 3 1)
(fast-expt 3 2)
(fast-expt 3 3)
(fast-expt 3 4)
(fast-expt 3 5)

