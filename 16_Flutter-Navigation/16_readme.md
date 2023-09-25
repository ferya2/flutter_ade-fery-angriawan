# Flutter Navigation
- Navigation adalah bagaimana cara berpindah dari satu halaman ke halaman lain
        Navigation dasar : Perpindahan halaman dapat menggunakan navigator.push()
                           Perpindahan halaman sebelumnya menggunakan navigator.pop()
        Navigator adalah widget yang mengelola tumpukan objek 
    Perpindahan halaman di 16_flutter-Navigation/praktikum/flutter navigation
    membuat homescreen dan about screen lalu di button HomeScreen beri Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const AboutScreen()));\
    Mengirim data ke halaman baru (menggunakan parameter pada konstruktur halaman )
- Navigation dengan namedroutes : Tiap halaman memiliki alamat yang disebut route.
        Perpindahan halaman dapat menggunakan Navigation.pushNamed()
        Kembali ke halaman sebelumnya dapat menggunakan Navigator.pop()
    Mendaftarkan Routes :
    - Tambahkan InitialRoute dan routes pada MaterialApp
    - Tiap route adalah fungsi yang membentuk halaman
    Perpindahan halaman
    Mengirim data ke halaman baru (menggunakan arguments saat melakukan pushNamed)