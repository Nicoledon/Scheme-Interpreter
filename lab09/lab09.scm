(define (over-or-under num1 num2) 
  (cond
   ((> num1 num2) 1)
   ((= num1 num2) 0)
   ((< num1 num2) (- 0 1))    
  ) 
)

(define (make-adder num)
  (lambda (inc) (+ inc num))
)

(define (composed f g) 
    (lambda (x) (f (g x)))
)
(define (repeat_helper f n count)
  (if 
    (= count 1) (f n )
    (f (repeat_helper f n (- count 1))) 
  ) 
)
(define (repeat f n) 
    (lambda (num) (repeat_helper f num n ))
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (cond
   ((zero? a) b)
   ((zero? b) a)
   ((= (modulo (max a b) (min a b)) 0) (min a b))
   (else (gcd (max a b) (modulo (max a b) (min a b))))
  )
)
