;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 04_Fonksiyonlar) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (fonksiyonIsmi parametre1)(* 2 parametre1))
(fonksiyonIsmi 5)

(define (topla a b) (+ a b))

(define (uygula fonksiyon a b)
  (fonksiyon a b))

(uygula + 10 10)
(uygula * 10 10)

;Faktöriyel hesabı yapan fonksiyon
(define
  (fact n)(
           if (= n 0) 1
           (* n (fact (- n 1)))))

;Fibonacci Dizisinden istenilen elemanı döndüren fonksiyon
(define (fibo n)
  (if (= n 1) 1
      (if (= n 2) 1
          (+ (fibo (- n 1)) (fibo (- n 2))))))

(fibo 8)