;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 02_StringVeBoolean) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define dizgi1 "merhaba")
dizgi1

(string-length dizgi1)

(string-ith dizgi1 4)

(string-append dizgi1 (number->string (string-length dizgi1)))

(or #true #false)

(define x #true)
(define y #false)

(or x y)
(and x y)

(define a 4)
(if (= a 0) 0 (/ 1 a))