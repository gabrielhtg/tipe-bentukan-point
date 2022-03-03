# <b>Tipe Bentukan Point</b>

Tonton Video ini untuk melihat cara membuatnya

<button><a href="https://youtu.be/pbt_xdvSCDY">Klik Disini</a></button><br><br>
Ini adalah program yang dibuat dari bahasa pemrograman LISP. Fitur-fitur dari program ini:
- Menentukan absis
- Menentukan ordinat
- Menentukan apakah koordinat berada di origin atau tidak
- Menentukan apakah koordinat berada pada sumbu Y
- Melakukan pengecekan apakah Koordinat-1 sama dengan koordinat-2
- Melakukan translasi dari koordinat dari koordinat menuju sumbu y sejauh n
- Menentukan jarak antara dua koordinat
  Menentukan kuadran dari koordinat

## <b> How to use? </b>

Berikut cara menggunakannya:
1. Buka CLISP
2. Kemudian load file ini.
3. Ketikkan perintah berikut untuk menentukan koordinat yang kalian inginkan.
   ```
   (setq nama_fungsi_1 (makepoint x y))
   (setq nama_fungsi_2 (makepoint x y))
   (setq nama_fungsi_3 (makepoint x y))
   ```
4. Ketikkan perintah berikut untuk menentukan absis.
   ```
   (absis nama_fungsi)
   ```
5. Ketikkan perintah berikut untuk menentukan ordinat.
   ```
   (ordinat nama_fungsi)
   ```
6. Ketikkan perintah berikut untuk menentukan apakah koordinat berada di origin atau tidak. Akan keluar output <b>T</b> apabila koordinat *berada di origin* dan akan keluar output **nil** apabila koordinat tidak berada di origin.
   ```
   (isorigin nama_fungsi)
   ```
7. Ketikkan perintah berikut untuk menentukan koordinat berada pada sumbu y atau tidak. Akan keluar output <b>T</b> apabila koordinat *bernilai sama* dan akan keluar output **nil** apabila koordinat *tidak bernilai sama*.
   ```
   (isonsby nama_fungsi)
   ```
8. Ketikkan perintah berikut untuk menentukan koordinat-1 sama dengan koordinat-2. Akan keluar output <b>T</b> apabila koordinat *bernilai sama* dan akan keluar output **nil** apabila koordinat *tidak bernilai sama*.
   ```
   (isequal nama_fungsi_1 nama_fungsi_2)
   ```
9. Ketikkan perintah berikut untuk mentranslasikan ordinat ke sumbuh y sejauh n.
    ```
    (translasisby nama_fungsi n)
    ```
10. Ketikkan perintah berikut untuk menentukan jarak dari koordinat-1 ke koordinat-2
    ```
    (jarak nama_fungsi_1 nama_fungsi_2)
    ```
11. Ketikkan perintah berikut untuk menentukan lokasi dari koordinat di kuadran.
    ```
    (kuadran nama_fungsi)
    ```

## <b>About Me</b>

I'm a student at Del Institute of Technology. <br>
Bachelor of Informatics study program. <br>


<button><a href="https://www.instagram.com/gabrielhtg77/">My Instagram</a></button>
<br>
<button><a href="https://www.del.ac.id/">Institut Teknologi Del</a></button>

## <b>Screenshot</b>

![ss](https://github.com/gabrielhtg/tipe-bentukan-point/blob/master/ss.png?raw=true)