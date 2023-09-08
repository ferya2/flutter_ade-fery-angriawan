# Summarry Platform-Widget
- MaterialApp adlaah widget dasar yang mengemas seluruh widget dalam aplikasi, digunakan pada aplikasi android 
    jika ingin menggunakan material app kita harus import dari package:flutter/material.dart
    Struktur : Widget yang pertama kali dibuka, diletakan pada bagian home 
               MaterialApp(
                theme : ThemeData.dark(), // mengatur tema aplikasi
                home : const HomePage(),  // halaman utama
               )
               Mengatur halaman juga dapat menggunakan routes dan initialRoute
               MaterialApp(
                theme : ThemeData.dark(), // mengatur tema aplikasi
                initialRoute : 'home',    // Route
                routes : {                              // mendaftarkan halaman pada routes
                    'home' : (_) => const HomePage(),
                },
               );
    Scaffold : widget dasar yang digunakan untuk membangun sebuah halaman pada MaterialApp
- CuppertionApp adalah Widget dasar yang mengemas seluruh widget dalam aplikasi (IOS)
    jika ingin menggunakan material app kita harus import dari package:flutter/cuppertion.dart
    Struktur : Variabel _themeDark dibuat untuk menyimpan tema karena di cuppertino tidak menyediakan ThemeDark.dark() seperti di material
               final _themeDark = const CuppertinoThemeData.raw(  // membuat dasar tema
                Brightness.dark,                    // Mengatur brightness tema menjadi dark
               )
    saat digunakan : CupertinoApp{
                        theme : _themeDark, // tema app
                        home: const HomePage(), // halaman utama
                     }