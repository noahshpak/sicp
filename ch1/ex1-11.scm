; f(n) = 3 is n < 3 else f(n) = f(n-1) + 2 * f(n-2) + 3 * f(n-3)

(define (f n) (f-recursive n))

(define (f-recursive n)
    (if (< n 3) 3
        (+ 
            (f-recursive (- n 1))
            (* (f-recursive (- n 2)) 2)
            (* (f-recursive (- n 3)) 3)
        )
    )
)

(f 14)

(define (f-iterative a b c step n)
    (if (= step n) c
        (f-iterative b c (+ c (* 2 b) (* 3 a)) (+ 1 step) n)
    )
)

(define (f n) 
    (if (< n 3) 3 (f-iterative 3 3 3 2 n)))

(f 14)