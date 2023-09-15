# Summary Advance-Form-Flutter
- User input digunakan sebagai Interaksi antara aplikasi dan user widget - widget ini dibuat pada aplikasi bertujuan untuk mengumpulkan input dan feedback dari user
- Date Picker   : - Widget dimana user bisa memasukan tanggal 
                - Tanggal Kelahiran, waktu pemesanan tiket, waktu reservasi restoran,jadwal meeting dll
        Cara menambahkan date picker :
                                        - menambahkan package intl di pubspec.yaml
                                        - mempersiapkan variabel
                                        - membangun UI
                                        - Menambahkan showDatePicker di dalam onPressed
                                        - memanggil fungsi setState di dalam onPressed
- Color Picker : - Widget dimana user bisa memilih color
                 - Penggunaan color picker bisa digunakan untuk berbagai macam kondisi
        Cara membuat color picker :
                                        - menggunakan lalu menambahkan package flutter_colorpicker
                                        - mempersiapkan variabel
                                        - membangun UI
                                        - Menambahkan fungsi showDialog didalam onPressed dengan return widget AlertDialog
                                        - import package flutter_colorpicker
                                        - membuat kode untuk penggunaan packages flutter_colorpicker    
- File Picker : - Kemampuan widget untuk membuka storage (memilih dan membuka file)
        Cara membuat file picker :      - menggunakan file_picker dan open_file  lalu tambahkan di pubspec.yaml
                                        - import package file_picker dan open_file
                                        - Membangun UI
                                        - Membuat fungsi untuk mengexplore dan memilih files dari storage 
                                        - memanggil fungsi _pickfile di dalam onPressedonPressed
                                        - membuat fungsi untuk membuka file
                                        - mengambil file dari objectResult dan memanggil fungsi _openfile dan _pickfile