import 'package:advance_form_flutter/soal_prioritas1.dart';
import 'package:advance_form_flutter/soal_prioritas2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Contact());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance User Input',
      home: HomePage(),
    );
  }
}