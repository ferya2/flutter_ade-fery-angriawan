# Summary State Management BLoC
- BLoC singkatan dari "Bussiness Logic Component", memisahkan antara bussiness logic dengan UI
    Kenapa BLoC?
    - Simple (Mudah untuk digunakan)
    - Powerfull (dapat mempercepat proses - proses tertentu)
    - Testable (Mudah untuk dilakukan pengujian)
    Cara Kerja BLoC :
    - Menerima Event sebagai input
    - Dianalisa dan dikelola didalam BLoC
    - Menghasil state sebagai output
    Stream :
    - Rangkaian proses secara asynchronous
    - Actor utama didalam BLoC
- Declarative UI : Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
    UI = f (State)
   UI : The Layout Screen
   f  : your build methods
   state : the aplication state
- Ephemeral State : > digunakan ketika tidak ada pada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnnya :
                        - PageView 
                        - BottomNavigationBar
                        - Swtich Button
                    > Tidak perlu state management yang kompleks
                    > hanya membutuhkan stateful widget dengan menggunakan fungsi setState()
- App State       : > digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget,
                        contohnya : - Login info
                                    - Pengaturan prefensi pengguna
                                    - Keranjang belanja,dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda
Pendekatan State Management : - SetState : lebih cocok penggunaannya pada ephemeral state
                              - Provider : penggunaan state management yang lebih kompleks seperti app state
                              - Bloc     : Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logicnya
    Class yang perlu diperhatikan dalam penggunaan provider, yaitu: 
        - Dari Package Provider
           ChangeNotifierProvider
           MultiProvider
           Consumer
        - Build in class flutter sdk
           ChangeNotifier :
           Class yang menambah dan menghapus listeners
           Digunakan dengan cara meng-extends Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang
    Chang Notifier Provider :
    Widget yang membungkus sebuah class 
    Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI nya
    Menggunakan create, provider yang akan menyimpan model yang telah dibuat

