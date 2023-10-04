import 'package:storage/contact.dart';
import 'package:storage/page/login.dart';
import 'package:storage/page/register.dart';
// import 'package:advance_form_flutter/soal_prioritas1.dart';
// import 'package:advance_form_flutter/soal_prioritas2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Storage',
      home: Login(),
    );
  }
}
