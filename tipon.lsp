; ---------------------------------------------------------------------------------------------
; Nama      : GABRIEL CESAR HUTAGALUNG
; NIM       : 11S21010
; Nama file : tipePoint.lsp
; ---------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI SELEKTOR:
; Nama fungsi                                                                      absis(P)
; absis:: point --> real
; absis(P) mengembalikan nilai absis dari titik P.
;
; Nama fungsi                                                                     ordinat(P)
; ordinat:: point --> real
; ordinat(P) mengembalikan nilai ordinat dari titik P.
; Realisasi:

(defun absis(P)
   (car P)
)

(defun ordinat(P)
   (car (cdr P))
)

; ---------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI KONSTRUKTOR
; 
; Nama fungsi                                                                 makePoint(x,y)
; makePoint:: 2 real --> point
; makePoint(x,y) membentuk sebuah point P dari x dan y, dengan x adalah absis dan y ordinat.
; ---------------------------------------------------------------------------------------------
; Realisasi:
(defun makePoint(x y)
   (cons x (cons y nil))
)

; ---------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI PREDIKAT
;
; Nama fungsi                                                                    isOrigin(P)
;
; isOrigin:: point --> boolean
; isOrigin(P) mengembalikan nilai benar jika titik P adalah titik pusat (0,0).
;
; Nama Fungsi                                                                      isonsby(P)
;
; isonsby:: point --> boolean
; isonsby(p) melakukan pengecekan apakah titik P berada pada sumbu Y.
;
; Nama Fungsi                                                                       isequal(p1 p2)
;
; isequal:: point --> boolean
; isequal(p1 p2) melakukan pengecekan apakah titik P1 sama dengan titik P2
;
; Nama Fungsi                                                                     translasisby(p n)
;
; translasisby:: point --> point
; mengembalikan sebuah titik hasil translasi titik P, searah sumbu Y, sejauh N
;
; Nama Fungsi                                                                     jarak (p1 p2)
;
; jarak:: point --> point
; mengembalikan sebuah nilai real, merupakan jarak antara titik P1 dan P2
; ---------------------------------------------------------------------------------------------
; Realisasi:

(defun isOrigin (P)
   (and (= (absis P) 0)
        (= (ordinat P) 0)
	)
)

(defun isonsby(p)
   (> (ordinat P) 0)
)

(defun isequal(p1 p2)
   (and (= (ordinat p1) (ordinat p2))
        (= (absis p1) (absis p2))
   )
)

(defun translasisby(P N)
   (cons (absis p) (cons (+ (ordinat P) n) nil))
)

(defun jarak (p1 p2)
   (cons (- (absis p1) (absis p2)) (cons (- (ordinat p1) (ordinat p2)) nil))
)

;Nama Fungsi Kuadran
;kuadran : point -->integer
;kuadran (P) mengembalikan lokasi kuadran dari titik P
;Realisasi:
;			depend on	x > 0 and y > 0 : 1
;						x < 0 and y > 0 : 2
;						x < 0 and y < 0 : 3
;						X > 0 and y < 0 : 4
;Realisasi LISP
;(defun Kuadran (P)
;	(cond (and (> (absis P) 0) (> (ordinat P) 0)) 1
;			(t (and (< (absis P) 0) (> (ordinat P) 0)) 2)
;			(t (and (< (absis P) 0) (< (ordinat P) 0)) 3)
;			(t (and (> (absis P) 0) (> (ordinat P) 0)) 4)

(defun kuadran (P)
  (cond ((and (> (absis P)0)(> (ordinat P) 0)) 1)
		((and (< (absis P)0)(> (ordinat P) 0)) 2)
		((and (< (absis P)0)(< (ordinat P) 0)) 3)
		((and (> (absis P)0)(< (ordinat P) 0)) 4)
		(t 'lainnya)
  )
)

; ---------------------------------------------------------------------------------------------
; APLIKASI

; --> (setq A (makePoint 0 3))
;       (0 3)
; --> (setq B (makePoint 3 3))
;       (3 3)
; --> (isonsby A)
;       T
; --> (isonsby B)
;       NIL