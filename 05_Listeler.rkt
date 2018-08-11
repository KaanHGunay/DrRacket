;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 05_Listeler) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;liste tanımlama
(list 1 2 3 4 5)

;listede aynı tip eleman bulunması zorunlu değildir
(list "a" 2 3 "deneme")

(define a (list 1 2 3))

;listenin ilk elemanını döndüren fonksiyonlar
(first a)
(car a)

;ilk eleman dışında kalan elemanları döndüren fonksiyonalar
(rest a)
(cdr a)

;listeye eleman ekleme - Orjinal diziyi etkilemez
(append (list 10) a) ;10 u listenin başına alır
(append a (list 5)) ;5 i listenin sonuna alır
(append a '(12)) ;liste vermenin kısa yolu
(cons 10 a) ;liste olamayan elemanı listeye ekleme / İlk parametre eklemencek eleman ikinci parametre liste


;listede bulunan tüm elemanların değerini bir arttıran fonksiyon
(define (artir l1) (if (empty? l1) '() ;boş liste dödür
                       (cons (+ 1 (first l1))
                             (artir (rest l1)))))

(define (bindir f l1) (if (empty? l1) '()
                       (cons (f (first l1))
                             (bindir f (rest l1)))))

(define (yenif a) (* a a))
(bindir yenif (list 2 8 3))

(define q (list 5 2 34 1))
(define r (list 1 4 2 7 44 23 2))

(define (topla l1 l2) (cond [(empty? l1) l2]
                            [(empty? l2) l1]
                            [else (cons (+ (car l1) (car l2))
                                   (topla (cdr l1) (cdr l2)))]
                            ))

(topla q r)







                      