; from the previous exercise / code presented in the chapter

(define (square x) (* x x))

; rather than have the check be absolute, we
; can check that the next guess is at least some 
; large-enough relative step. This helps for small numbers
; because if we fix epsilon to 0.001, 
; any x << epsilon will be extremely inaccurate
; for large numbers, epsilon could be too small for the 
; floating point arithmetic to actually converge within our bounds. 
; By making this check relative to our last guess, we avoid that problem
(define (good-enough? guess newguess)
    (< (abs (- guess newguess)) (* 0.001 guess)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt-iter guess x)
    (define next (improve guess x))
    (if (good-enough? guess next) 
        guess
        (sqrt-iter next x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; very small (10^-10)
(sqrt 0.0000000001)
; very large
(sqrt 294039282912333)