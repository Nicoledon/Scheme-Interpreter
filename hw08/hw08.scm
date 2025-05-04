(define (ascending? s) 
   (cond 
   ((null? s) #t)
   ((null? (cdr s)) #t)
   ((<= (car s) (car (cdr s))) (ascending? (cdr s)))
   (else #f)
   )  
)
(define (my-filter pred s)
   (if (null? s)
        nil
     (let ((rest (my-filter pred (cdr s))))
        (if (pred (car s))
           (append (list(car s)) rest) 
            rest
        )
   )
)
)
(define (interleave lst1 lst2) 
  (cond 
   ((null? lst1) lst2) 
   ((null? lst2) lst1) 
   (else (append (list (car lst1)) (interleave lst2 (cdr lst1))))
  )
)

(define (no-repeats s))
