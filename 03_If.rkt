;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 03_If) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define a 8)
(define b 9)

(if(= a b)
   (print "esit")
   (if (> a b)
       (print "a büyüktür")
       (print "b büyüktür")))

(cond [(= a b) (print "esit")]
      [(> a b) (print "a büyük")]
      [(< a b) (print "b büyük")])