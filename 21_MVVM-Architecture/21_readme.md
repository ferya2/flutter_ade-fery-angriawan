# Summary MVVM Architecture
- Apa itu MVVM Architecture? 
    MVVM (Model View View Model) dimana kita memisahkan logic dengan tampilan View ke dalam ViewModel
- Keuntungan menggunakan MVVM :
    > Reusability : Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
    > Maintainability : Mudah dirawat karena perkerjaan terkait tampilan tidak tertumpuk bersama logic
    > Testability : pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian
- Melakukan MVVM
    Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
    Tiap screen diletakan dalam sebuah direktori yang didalamnya terdapat View dan ViewModel
    Model : 
            - Bentuk data yang digunakan,dibentuk dalam bentuk class
            - Data data yang dimuat, diletakan pada property
    View Model : 
            - Menyimpan data data dan logic yang diperlukan halaman ContactScreen
            - Jika widget lain memerlukan logic yang sama,dapat menggunakan ViewModel ini juga
    Mendaftarkan View Model :
            - Menggunakan Multi Provider agar dapat menggunakan banyak ViewModel
            - Materialapp sebagai Child utama
    View :
            - Menggunakan stateful widget
    Menampilkan data pada view :
            - Letakan pada bagian Build
            - Menggunakan getters yang ada di view model 
            - Data dapat langsung ditampilkan pada widget