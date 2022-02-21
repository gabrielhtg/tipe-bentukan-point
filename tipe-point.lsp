; -------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; -------------------------------------------------------------------------------
; DEFENISI TIPE

; type point : <x:integer,y:integer>
; {<x,y> adalah sebuah point (titik) dalam koordinat Cartesian dengan adalah
; absis dan y adalah ordinat}
; -------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI SELECTOR

; absis : point --> integer
; {absis(p) memberikan absis dari point P}

; ordinat : point --> integer
; {ordinat(p) memberikan ordinat dari point P}
; -------------------------------------------------------------------------------
; REALISASI LISP SELECTOR

(defun absis (p)
    (car p)
)

(defun ordinat (p)
    (car (cdr p))
)
; -------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI KONSTRUKTOR

; buat-point : 2 integer --> point
; {buat-point(x y) membentuk sebuah point P dari x dan y dengan x sebagai absis
; dan y sebagai ordinat}
; -------------------------------------------------------------------------------
; REALISASI LISP KONSTRUKTOR

(defun buat-point(x y)
    (cons x (list y))
)
; -------------------------------------------------------------------------------
; APLIKASI

; --> (setq p1 (buat-point 4 7))

; --> (setq p2 cons(buat-point 5 2))

; --> (absis p1)

; --> (absis p2)

; --> (ordinat (buat-point 3 9))