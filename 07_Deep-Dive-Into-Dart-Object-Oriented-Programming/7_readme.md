# Summary Deep-Dive-Into-Dart-Object-Oriented-Programming
- Constructor Digunakan untuk mengkrontruksi objek baru 
    Deskripsi : - Method yang dijalankan saat pembuatan Objek
                - Dapat Menerima Parameter
                - Tidak memiliki Return
                - Nama sama dengan nama class
- Inheritence(Pewarisan) adalah kemampuan suatu program membuat class baru dengan memanfaatkan class yang sudah ada
    Deskripsi : - Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru 
- Method Overriding merupakan kemampuan menulis ulang method yang sudah ada pada super-class
    Deskripsi : - Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda
    Melakukan Overriding : - dilakukan pada class yang melakukan inheritence
                           - Method sudah ada pada class induk
                           - Method ditulis ulang seperti membuat method pada class anak
                           - Ditambahkan tanda @override di baris sebelum method dibuat
- Interface adalah class yang menunjukan method apa saja yang ada pada suatu class dan seluruh method yang ada wajib di override 
    Deskripsi : - Digunakan dengan menggunakan Implements
                - Interface sekilas mirip dengan Inheritence namun pada class yang melakukan implements wajib melakukan override di semua method yang ada pada class induk
- Abstract class merupakan class abstrak yang artinya class ini hanya gambaran umum dari sebuah class dan tidak bisa dibuat sebagai objek secara langsung namun class ini dapat menurunkan semua property dan method2 nya.
    Deskripsi : - Menunjukan method apa saja yang ada pada suatu class 
                - Digunakan dengan menggunakan extends 
                - Tidak dapat dibuat objek
                - Tidak semua method harus di override 
- Polymorphism merupakan kemampuan suatu data objek berubah menjadi bentuk lain
    Deskripsi : - Tipe data yang dapat digunakan adalah super class
                - Dapat dilakukan pada class dengan extends atau implements
- Generics merupakan kemampuan menambahkan parameter type pada kelas atau fungsi 
    Deskripsi : - dapat digunakan pada class atau fungsi 
                - Memberi kemampuan agar dapat menerima data dengan tipe data yang berbeda 
                - Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi
                