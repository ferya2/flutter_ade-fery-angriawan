# Summary Intro Rest API JSON
-  REST API (Representational State transfer Application Programming Interface)
    REST API merupakan jembatan antara server dengan client
    Deskripsi : - Arsitektural yang memisahkan tampilan dengan proses bisnis
                - Bagian tampilan dengan proses bisnis terkirim data melalui HTTP Request
-  HTTP (Hyper Text Transfer Protocol) adalah protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.
    macam macam response : https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#successful_responses
    Pola Komunikasi : - Client Mengirim Request
                      - Server mengolah dan membalas dengan memberi response
    > Struktur Request : - URL : alamat halaman yang akan diakses
                         - Method (GET,POST,PUT,DELETE) menuju aksi yang diinginkan
                         - Header : Informasi tambahan terkait request yang dikirimkan
                         - Body   : Data yang disertakan bersama request
    > Struktur Response : - Status Code : Kode yang mewakili keseluruhan response,baik sukses maupun gagal
                          - Header : Informasi tambahan terkait response yang diberikan
                          - Body   : Data yang disertakan bersama response
- Dio adalah sebuah pacakge yang tersedia di pub dev yang dimanfaatkan untuk melakukan REST API
    Instalasi : - Tambahkan di pubspec.yaml "dio : " lalu flutter pub get
    Penggunaan Dio : Mengambil data menggunakan dio dan menampilkan hasilnya pada console
- Serialisasi JSON (Java Script Object Notation) yang umumnya digunakan pada REST API cara penulisan data pada json biasanya bentuk key dan value
    - Mengubah struktur data ke json
        Map/List -> Serialisasi -> JSON
      Mengubah bentuk JSON ke data
       JSON -> Deserialisasi -> Map/List
    - Deserialisasi
    - Menggunakan JsonEncode dari package dart:convert

- GET:
    GET digunakan untuk mengambil informasi atau data dari sumber daya yang ada di server.
    Ini adalah metode yang bersifat idempoten, yang berarti penggunaan berulang dari metode GET pada sumber daya yang sama akan menghasilkan hasil yang sama tanpa mempengaruhi sumber daya tersebut.
    Contoh penggunaan GET adalah saat Anda mengakses halaman web, mencari data, atau membaca informasi.
- POST:
    POST digunakan untuk mengirim data ke server untuk membuat sumber daya baru.
    Ini adalah metode yang tidak idempoten, yang berarti penggunaan berulang dari metode POST pada sumber daya yang sama dapat menghasilkan sumber daya yang berbeda setiap kali.
    Contoh penggunaan POST adalah saat Anda mengirim formulir online atau membuat entri dalam basis data.
- PUT:
    PUT digunakan untuk mengirim data ke server untuk mengganti atau memperbarui sumber daya yang ada.
    Ini adalah metode yang idempoten, yang berarti penggunaan berulang dari metode PUT pada sumber daya yang sama akan menghasilkan hasil yang sama.
    Contoh penggunaan PUT adalah saat Anda memperbarui informasi pengguna atau mengganti konten halaman web.
- DELETE:
    DELETE digunakan untuk menghapus sumber daya yang ada di server.
    Ini adalah metode yang idempoten, yang berarti penggunaan berulang dari metode DELETE pada sumber daya yang sama akan menghasilkan hasil yang sama (yaitu, sumber daya tersebut akan dihapus).
    Contoh penggunaan DELETE adalah saat Anda menghapus entri dari basis data atau menghapus file dari server.


REST API Book Mas Yudha : https://bookapi-1-v1905306.deta.app/docs