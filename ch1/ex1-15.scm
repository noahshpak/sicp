;; sin x = 3 sin (x/3) - 4 sin^3 (x/3)

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1)) angle (p (sine (/ angle 3.0))))
)

(sine 12.15)

;; This procedure recurses as follows

;; (sine 12.15)
;; (p (sine (/ 12.15 3)))
;; (p (p (sine (/ (/ 12.15 3) 3))))
;; meaning it grows logarithmically, applying p log_3(angle) times