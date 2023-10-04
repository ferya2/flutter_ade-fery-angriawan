# Summary Storage
- Local Storage : - Diperlukan untuk efisiensi penggunaan data internet, - Ada beberapa cara implementasi penyimpanan lokal
    contoh : - shared preference
             - local database
- Shared Preference : - Menyimpan data yang sederhana
                      - Penyimpanan dengan format key-value
                      - Menyimpan tiper data dasar seperti teksn angka dan boolean
                      - Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian
    Implementasi Shared Preference :
    - Menambahkan shared preference pada fitur login
    - STEP 1 : Tambahkan package shared_preference
    - STEP 2 : Buat Properti baru untuk TextEditingController dan tambahkan di setiap TextFromField
    - STEP 3 : Buat Method Dispose. untuk menghindari kebocoran memori
    - STEP 4 : Buat variabel baru untuk menyimpan sharedpreference dan nilai bool newUser
    - STEP 5 : buat method baru dengan nama checkLogin()
    - STEP 6 : panggil method checkLogin() di method initState()
    - STEP 7 : di dalam onPressed Elevated Button, buat variabelbaru username untuk menampung input dari user
    - STEP 8 : Buat setBool dan setString baru didalam blok kode if dan buat navigasi untuk ke halaman HomePage
    - STEP 9 : Buat file dart baru home_page.dart dan tambahkan UI nya
    - STEP 10 : home_page.dart buat variabel baru untuk menyimpan shared preference dan username
    - STEP 11 : home_page.dart buat method baru initial() dan panggil di method initState()
    - STEP 12 : home_page.dart mengganti text 'username' menjadi variabel username
    - STEP 13 : home_page.dart tambahkan method setBool dan remove pada ElevatedButton
    Result : Ketika Menekan login maka akan masuk ke homepage dan menampilkan text username sesuai yang diinputkan di text from field
- Local Database (SQLite) : - Menyimpan dan meminta data dalam jumlah besar pada local device 
                            - bersifat privat
                            - menggunakan sqllite database melalui package sqflite
                            - sqllite adalah database opensource yang mendukung insert,read update dan remove data.
 
