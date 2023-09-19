# Summary Asset Font Image
- Asset adalah file yang di bundled dan di deployed bersamaan dengan aplikasi, tipe tipe asset : static data(JSON files), icons, images, dan font file(ttf)
    Menentukan Asset : - Flutter menggunakan pubspec.yaml
                       - pubspec.yaml terletak pada root project untuk mengidentifikasi asets yang dibutuhkan aplikasi
                       - gunakan karakter "/" untuk memasukan semua assets dibawah satu directory name
- Image penggunaan image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
        - Flutter mendukung format gambar seperti JPEG,WebP,GIF,Animated Web/GIF,PNG,BMP, dan WBMP
        - Menampilkan gambar dari project asset dan internet
    Loading Image : - Gunakan widget Image
                    - Membutuhkan properti image dengan class AssetImage()
                    - Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
                    - Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya
- Font penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi 
        - Penentuan font yang mau dipakai biasanya oleh UI designer
        - Penerapan font menggunakan custom font atau dari package
    Custom Font : Step 1 >> Cari dan donwload font (Ex. https://font.google.com/)
                  Step 2 >> Import file .ttf
                  Step 3 >> Daftarkan font di pubspec.yaml
                  Step 4 >> Mengatur font sebagai default
                  Step 5 >> Gunakan font di spesifik widget
    Font dari Package : Step 1 >> Tambahkan package google_fonts di dependencies
                        Step 2 >> Import package di file dart
                        Step 3 >> Gunakan font dengan memanggil GoogleFonts.namaFont()