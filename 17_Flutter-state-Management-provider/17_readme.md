# Summary Flutter State Management Provider
- State adalah data yang dapat dibaca saat pembuatan widget, dapat berubah saat widget sedang aktif,hanya dimiliki okeh stateful widget
    kita bisa memanfaatkan state ketika kita ingin membuat sebuah widget yang ingin memiliki perubahan kita dapat menyimpan nilainya disebuah property lalu pada saat ada perubahan state digunakan pada widget saat di build
    -   Mengubah State :  > menggunakan method setState 
                          > buat file dart dengan nama state_management.dart lalu buat stateful widget buat variabel number = 0 ; lalu di setState tinggal beri increment number++;
                          (17_Flutter-state-Management-Provider/praktikum/cobavideomateri/state_management_provider/lib/statemanagement.dart)
    Global State : State biasa yang dapat digunakan pada seluruh widget 
    Kenapa perlu global state? 
    - agar antara widget dapat memanfaatkan state yang sama dengan mudah 
    Provider -------- state management
      |
      --------------- perlu diinstal agar dapat digunakan
    ke Pub Dev lalu search provider > installing lalu copy dan paste ke pubspec.yaml
    - Membuat State Provider : Buat file bernama contact.dart, definisikan state dalam bentuk class
    - Mendaftarkan State provider : Import dalam file main.dart, daftarkan pada runApp dengan MultiProvider
    - Menggunakan State dari provider : Simpan  Provider dalam variabel, ambil data dari provider melalui getter
         