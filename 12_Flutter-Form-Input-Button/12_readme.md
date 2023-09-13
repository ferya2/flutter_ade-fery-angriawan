# Summary Flutter-Form-Input-Button
- Form digunakan untuk menerima isian data dari pengguna, isian data dapat lebih dari satu
    Membuat form menggunakan statefull widget (Keadaan form disimpan dengan GlobalKey<FormState>)
- Input ada beberapa yang bisa kita gunakan seperti textfield,radio,checkbox,dan dropdown button
    1. TextField        : - Menerima isian data dari pengguna
                          - Isian data dapat lebih dari satu
       Membuat Textfield menggunakan TextEditingController, isian dapat berupa teks
    2. Radio            : - Memberi opsi pada pengguna, hanya dapat memilih pada satu opsi
       Data diambil menggunakan property dengan tipe data sesuai pada radio
    3. CheckBox         : - Memberi opsi pada pengguna, dapat memilih beberapa opsi
       Data diambil menggunakan property bertipe bool
    4. Dropdownn Button : - Memberi Opsi pada pengguna
                          - hanya dapat memilih satu opsi
                          - Opsi tidak ditampilkan diawal,opsi tampil jika ditekan
       Data diambil menggunakan properti dengan tipe data sesuai value pada DropDownMenuItem
    5. Button           : - Bersifat seperti Button, dapat melakukan sesuatu saat ditekan
    - ElevatedButton    : - tombol yang timbul, jika ditekan akan menjalankan onPressed
    - IconButton        : - tombol ini hanya menampilkan icon, jika ditekan akan menjalankan onPressed
    