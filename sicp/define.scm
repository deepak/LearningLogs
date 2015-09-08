;; how to pretty-print this in scheme-mode ?
(define exp
  (/ (* (+ 2 5)
        (+ 1 1))
     2))

;; no need to wrap in parens. what kind of form ?
;; is this not inconsistent ?
exp

;; variables can be re-defined
(define x 2)
x ;;=> 2
(define x 10)
x ;;=> 10

;; returns a value (atleast in the scheme REPL) same like
;; any other expression like "(+ 1 1)"
(define x 2)
(+ 1 1)

;; valid to use defined variable
(+ 1 x)

;; not valid to have define inside an expression
;; it does not use the value of the define expression
;; SICP says that (define x 2) is not a combination
;; says that it is a special form and they have their own evaluation rules
;; not very clear on why this is so. maybe later
;; maybe because it can make programs harder to read and reason about
;; one more thing, if define is not a "combination"
;; then why does it return a value ? where can this value be used ?
;; (+ 1 (define x 2)) ;;=> error

;; can we get the last value in the scheme REPL ?
;; like "_" in ruby's irb
(define (square x) (* x x))

(square 2) ;;=> 4
(square (+ 2 1)) ;;=> 9
(square (square 2)) ;;=> 16

(define (sum-of-squares x)
  (+ (square x)
     (square x)))

(sum-of-squares 2) ;;=> 8

(define (sum-of-squares-after-adding-one x)
  (+ (square (+ x 1))
     (square (+ x 1))))

(sum-of-squares-after-adding-one 2) ;;=> 18

;; can pass it a function. returns a value
(define (sum-of-factory func x)
  (+ (func x)
     (func x)))
