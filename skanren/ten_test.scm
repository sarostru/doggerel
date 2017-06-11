; I was told I should start with ten tests
(define n_passed 0)
(define n_failed 0)

(define (run-test pred? arg desc)
  (if (pred?)
    (let ((_ (set! n_passed (+ n_passed 1))))
      (display "SUCCESS: %_ %_" arg desc))
    (let ((_ (set! n_failed (+ n_failed 1))))
      (display "FAILURE: %_ %_" arg desc))))


(define (assert-ten x)
  (run-test (lambda () (= 10 x)) x " is ten"))

(define (assert-not-ten x)
  (run-test (lambda () (!= 10 x)) x " is not ten" ))

(display "***********************")
(display "Things that are 10:")
(display "***********************")
(assert-ten 10)
(assert-ten (+ 9 1))
(assert-ten (+ 1 9))
(assert-ten (+ 5 5))
(assert-ten (+ 5 (+ 3 2)))

(display "***********************")
(display "Things that are not 10:")
(display "***********************")
(assert-not-ten 11)
(assert-not-ten 9)
(assert-not-ten (+ 10 10))
(assert-not-ten "ten")
(assert-not-ten false)
(assert-not-ten true)
(assert-not-ten (lambda () ()))
