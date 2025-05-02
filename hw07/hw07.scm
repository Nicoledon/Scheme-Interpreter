(define (square n) (* n n))

(define (pow base exp) 
   (cond 
    ((= exp 0)1)
    ((= exp 1)base)
    ((even? exp) (square (pow base (quotient exp 2 ))))
    (else (* base (square (pow base (quotient exp 2)))))
   ) 
) 
(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let (_________________)
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE)

(define (caddr s) 'YOUR-CODE-HERE)
