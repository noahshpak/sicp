(define (new-if predicate then-clause else-clause)
    (cond 
        (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (square x) (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

; The else clause of the `cond` returns the
; expression without evaluating  