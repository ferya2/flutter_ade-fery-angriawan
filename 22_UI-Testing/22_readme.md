# Summary UI Testing
- Apa itu UI Testing ? 
    yaitu pengujian yang dilakukan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna
- UI Testing di Flutter
    disebut juga widget testing sehingga pengujian dilakukan pada widget dengan menuliskan scripts yang dapat dijalankan ssecara otomatis
- Keuntungan UI Testing :
    > Memastikan seluruh widget memberi tampilan yang sesuai
    > Memastikan seluruh interaksi dapat diterima dengan baik
    > Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget
- Melakukan UI Testing :
    > Instalasi package testing
    > Penulisan script testing  1. dilakukan pada folder test, 2. nama file diikuti test contoh widget_test.dart
    > Tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing
    > Tiap screnario pengujian disebut ~ Test Case ~
- Script Testing :
    > Test case diawali dengan testWidget dan diberi judul
    > Simulasi proses mengaktifkan halaman AboutScreen
    > Memeriksa apakah di halaman tersebut terdapat teks "About Screen"
- Menjalankan Testing :
    > Perintah flutter test akan menjalankan seluruh file test yang dibuat
    > Hasil dari perintah ini adalah lamanya waktu pengujian yang dilakukan, dan pesan bahwa pengujian berhasil
- Menjalankan Testing (gagal) :
    > Akan ditampilkan penyebab gagalnya pengujian

# Output Build Flutter
- Apa itu Output Build?
    Deskripsi : - File / berkas hasil keluaran dari project flutter
                - Digunakan untuk merilis aplikasi ke App Store
                - Terdiri dari format APK atau AAB untuk Android dan IPA untuk IOS
- Mode Build  : - Mode debug
                - Mode profile
                - Mode release 
    " flutter build apk --debug " => Untuk pengujian selama proses development
    " flutter build apk -profile " => Untuk pengujian performa aplikasi
    " flutter build apk --release " => Untuk merilis aplikasi ke Google Play Store dan Stores android lainnya
- Build APK   : - Hanya dapat berjalan di Android
                - Memiliki format .apk
                - Dapat diinstal langsung pada perangkat android
- Proses sebelum build APK : - Mengatur nama aplikasi di AndroidManifest.xml
                             - Mengatur ikon Aplikasi
                             - Mengatur perizinan aplikasi di AndroidManifest.xml
- Persiapan : - Buat project baru beri nama counter_App
- AndroidManifest.xml : - File yang berisi informasi penting tentang aplikasi Android, seperti nama, komponen, permission dan fitur hardware aplikasi
                        - Terletak di 3 folder untuk setiap mode build debug, release/main, dan profile
- Mengatur nama Aplikasi : 
                > STEP 1 : Ubah properti android:label pada AndroidManifest.xml yang ada di folder android/app/src/main/AndroidManifest.xml
                > STEP 2 : Stop dan Jalankan ulang Aplikasi
- Mengatur Ikon Aplikasi : 
                > STEP 1 : Men-generate ikon menggunakan website
                > STEP 2 : Download zip file hasil generate
                > STEP 3 : Unzip hasil download
                > STEP 4 : Copy seluruh folder mipmap ke project flutter
                > STEP 5 : Stop dan jalankan ulang aplikasi
- Mengatur perizinan aplikasi :
                > Menambahkan Tag uses-permission
                > Contoh perizinan seperti : Camera,bluetoth, Internet dll
- Melakukan build APK : 
                > Membuat file APK dengan mode debug dan profile 
                  jalankan perintah flutter build apk --debug akan muncul tampilan dan waktu yang dibutuhkan untuk build
                  jalankan perintah flutter build apk --profile akan muncul tampilan dan waktu yang dibutuhkan untuk build
                > Membuat file APK dengan mode release
                  jalankan perintah flutter build apk --release jika terjadi error coba ubah pengaturan gradle JDK di build gradle jdk 7 > jdk 8
                  jalankan ulang perintah flutter build apk --release
- Output build APK : - Output file .apk berada di folder
                build/app/outputs/apk/debug/app_debug.apk,
                build/app/outputs/apk/profile/app_profile.apk,
                build/app/outputs/apk/release/app_release.apk,
            lalu instal aplikasi pada real device 
- Build IPA : - Hasil Output hanya dapat berjalan di IOS memiliki format .ipa
              - Perlu mendaftar akun Apple Developer Program
              - Perintah build hanya dapat dijalankan pada perangkat Apple
        info.plist : - Tempat konfigurasi data informasi mengenai aplikasi IOS 
                     - Berada di folder ios/runner/info.plist
                     - Untuk mengatur nama aplikasi, ubah nama di dalam tag string dibawah key Bundle Name yang ada di info.plist
- Melakukan Build IPA : - Perintah hanya dapat dijalankan pada perangkat mac/IOS
                        - hasil Output terletak pada folder build/ios/archieve  code : "flutter build apk ios "

- Package Rename : > STEP 1 : Instal package rename
                   > STEP 2 : Jalankan perintah pada terminal
                   > STEP 3 : Stop dan jalankan ulang aplikasi
                   > STEP 4 : flutter pub global active rename --appname "Nama Aplikasi"
- Flutter Launcher Icon : > STEP 1 : buat folder assets di root procjet flutter
                          > STEP 2 : Pindahkan file icon beresolusi 1024 x 1024
                          > STEP 3 : Tambahkan package
                          > STEP 4 : Tambahkan Flutter icon di pubspec.yaml
                          > STEP 5 : Jalankan perintah di terminal
                          > STEP 6 : Stop dan jalankan Aplikasi


