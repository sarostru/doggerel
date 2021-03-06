; question mark tests
(define n_passed 0)
(define n_failed 0)

(define (run-test pred? thing is)
  (if (pred?)
    (let ((_ (set! n_passed (+ n_passed 1))))
      (display "SUCCESS: %_ %_" thing is))
    (let ((_ (set! n_failed (+ n_failed 1))))
      (display "FAILURE: %_ %_" thing is))))

(define (assert-null x)
  (run-test (lambda () (null? x)) x "is null"))

(define (assert-not-null x)
  (run-test (lambda () (not (null? x))) x "is not null"))

(define (id_func x) x)
(display "***********************")
(display "Things that are null:")
(display "***********************")
(assert-null `())
(assert-null ())
(display "***********************")
(display "Things that are not null:")
(display "***********************")
(assert-not-null 0)
(assert-not-null "zero")
(assert-not-null (lambda () `()))
(assert-not-null false)
(assert-not-null true)
(assert-not-null id_func)


(define (assert-procedure x)
  (run-test (lambda () (procedure? x)) x "is a procedure"))

(define (assert-not-procedure x)
  (run-test (lambda () (not (procedure? x))) x "is not a procedure"))


(display "***********************")
(display "Things that are procedures:")
(display "***********************")
(assert-procedure id_func)
(assert-procedure (lambda (x y) (+ x y)))
(display "***********************")
(display "Things that aren't procedures:")
(display "***********************")
(assert-not-procedure `())
(assert-not-procedure 0)
(assert-not-procedure "zero")
(assert-not-procedure false)
(assert-not-procedure true)
; TO FIGURE OUT: if I quote a symbol name it bails which makes sense, but what do I want it to do?
; (assert-not-procedure (cons `lambda (cons thwpt (cons phwpt ()))))
; TODO:: These two should signal an error because of all the unbound variables
(assert-not-procedure (cons lambda (cons thwpt (cons phwpt ()))))
(assert-not-procedure (cons "lambda" (cons thwpt (cons phwpt ()))))
(assert-not-procedure (cons "lambda" (cons "thwpt" (cons "phwpt" ()))))

(define (assert-pair x)
  (run-test (lambda () (pair? x)) x "is a pair"))

(define (assert-not-pair x)
  (run-test (lambda () (not (pair? x))) x "is not a pair"))

(display "***********************")
(display "Things that are pairs:")
(display "***********************")
(assert-pair (cons 1 2))
(assert-pair (cons "one" 2))
(assert-pair (cons 1 "two"))
(assert-pair (cons (cons () ()) (cons () ())))
(assert-pair (cons 1 ()))
; leaving out the . syntax for literal cons pairs
(assert-pair `(1 2)) 
(assert-pair `(1)) 
(assert-pair `(1 2 3)) 
(display "***********************")
(display "Things that aren't pairs:")
(display "***********************")
(assert-not-pair 8)
(assert-not-pair `()) 
(assert-not-pair true) 
(assert-not-pair "some string") 


