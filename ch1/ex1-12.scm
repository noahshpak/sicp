; numbers at edges of triangle are all 1
; index from 1 (row 1 has 1 elem, row 2 has 2 elements)
(define (pascal row col)
    (cond
        (
            (or (< row 0) (= row 0) (< col 0) (= col 0)) 
            0
        )
        (
            (or (= row 1) (< row 1) (= col 1) (= col row)) 
            1
        )
        (else 
            (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))
        )
    )
)

(pascal 1 1)
(pascal 2 1)
(pascal 3 1)
(pascal 4 2)
(pascal 10 6)