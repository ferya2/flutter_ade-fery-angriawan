# Summary Dialog Bottom Sheet
- Aplikasi Task Management : Menambahkan dan menghapus kegiatan
    Aplikasi Task Management :
        1. Membuat model untuk informasi yang mau disimpan. buat folder models dan didalamnya buat file baru task_model.dart 
        2. Membuat task screen, buat folder screens di dalam nya buat file dart baru task_Screen.dart
        3. Membuat empty_task_screen.dart di folder screens
        4. Tambahkan package provider di pubspec.yaml
        5. Membuat Task manager, buat file dart baru task_manager.dart di dalam folder models. tambahkan method deleteTask dan addTask 
        6. di main.dart manambahkan TaskManager sebagai provider
        7. task_screen.dart membuat fungsi buildTaskScreen, akan me - return antara Task Screen yang ada datanya atau yang kosong dan panggil fungsinya di body 
        8. Membuat TaskItemScreen. buat file dart baru dengan nama task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate
        9. buat FloatingActionButton untuk navigasi ke TaskItemScreen
        10. task_item_screen.dart menambahkan state properti,initState dan dispose
        11. task_item_screen.dart membuat buildNameFile dan panggil fungsinya di listview 
        12. Membuat buildButton dan panggil fungsinya di dalam ListView 
        13. Membuat TaskItemCard, buat folder baru components lalu didalamnya buat file dart baru task_item_card.dart
        14. task_item_screen.dart menambahkan callback handler di ElevatedButton dan menambahkan pacakge uuid 
        15. Membuat ItemListScreen, dalam folder screen buat file dart baru task_list_screen.dart dan ditambahkan di buildTaskScreen (task_screen.dart)
        16. task_list_screen.dart menambahkan properti yang dibutuhkan pada ItemTaskCard untuk melihat task yang sudah dibuat
- Alert Dialog : - Untuk Tampilan android, dan material design
                 - Menginformasikan pengguna tentang situasi tertentu 
                 - Bisa digunakan untuk mendapatkan input dari user 
                 - Membutuhkan helper method showDialog
    Alert Dialog :
        17. di task_item_card.dart tambahkan Alert Dialog, memanggil fungsi showDialog didalam fungsi onPressed pada iconButton, showDialog membutuhkan context dan builder,di buildernya akan mereturn AlertDialog
            > Alert dialog menyediakan properti content dan actions, content bisa dimasukan widget text,gambar dan animasi gamabr, action dapat menambahkan button untuk merespon inputan user
        18. task_item_card.dart membuat properti onPressed
        19. task_list_screen.dart menambahkan fungsi onPressed pada TaskItemCard, pada body fungsinya tambahkan method deleteTask,Navigator.pop(context)dan scaffold messengger
- BottomSheet : - seperti dialog tetapi muncuk dari bawah layar aplikasi
                - menggunakan fungsi bawaan flutter
                - Membutuhkan dua properti, context dan builder
        20. task_screen.dart membuat Bottom Sheet
        21. buat file dart baru profile_sheet.dart di dalam folder components dan buat konten-kontennya
        22. task_screen.dart mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()