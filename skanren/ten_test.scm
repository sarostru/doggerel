; I was told I should start with ten tests
(define n_passed 0)
(define n_failed 0)

(define (run-test pred? desc)
  (if (pred?)
    (let ((_ (set! n_passed (+ n_passed 1))))
      (println (cons "SUCCESS: " (cons desc ()))))
    (let ((_ (set! n_failed (+ n_failed 1))))
      (println (cons "FAILURE: " (cons desc ()))))))


(define (assert-ten x)
  (run-test (lambda () (= 10 x)) (cons x (cons " is ten" ()))))

(define (assert-not-ten x)
  (run-test (lambda () (!= 10 x)) (cons x (cons " is not ten" ()))))

(println "***********************")
(println "Things that are 10:")
(println "***********************")
(assert-ten 10)
(assert-ten (+ 9 1))
(assert-ten (+ 1 9))
(assert-ten (+ 5 5))

(println "***********************")
(println "Things that are not 10:")
(println "***********************")
(assert-not-ten 11)
(assert-not-ten 9)
(assert-not-ten (+ 10 10))
