# Summary Open AI
OpenAI Introduction Open ai sebuah library yang dapat digunakan untuk memanfaatkan teknologi ai atau artificial intelligence yang disediakan oleh open ai, library ini nantinya dapat diintegrasikan dengan berbagai aplikasi seperti api, web dan mobile.
Keuntungan dari open ai yaitu gratis, mudah dipasang, dapat digunakan di berbagai perangkat, jumlah parameternya 175 miliar atau model davinci 03.

Project overview 
Mengembangkan sebuah aplikasi mobile untuk mendapatkan rekomendasi mobil berdasarkan asal merek dan dana yang dimiliki.

Project example 
 1. Mendapatkan api key dari open ai. 
 2. Kunjungi halaman berikut lalu membuat api key baru 
 3. mengisi nama api key, tekan tombol create secret key untuk membuat api key, setelah api key dibuat 
 4. Pastikan api key disimpan di dalam sebuah file karena api key hanya bisa dicopy satu kali.
 5. Membuat project flutter Tekan ctrl + shift + p kemudian pilih flutter new project>pilih application>setelah folder untuk membuat project ditentukan kemudian isi nama project lalu tekan enter. 
6. melakukan instalasi berbagai package yaitu flutter pub add http
7.  flutter pub add intl
8. flutter pub add envied
9.  flutter pub add --dev envied_generator 
10. flutter pub add --dev build_runner
11. lalu membuat file konfigurasi, jika menggunakan git pastikan file .env dan env.g.dart sudah ditambahkan di dalam file .gtignore, membaca file konfigurasi 
12. melakukan generate kode untuk membaca .env, membuat variabel untuk menyimpan api key, membuat data model, membuat komponen servis, membuat halaman beranda, membuat halaman daftar rekomendasi, membuat konfigurasi di main.dart