import 'package:flutter/material.dart';
import './flutter_form.dart';
import './soal_prioritas1.dart';

void main() {
  runApp(const Contact());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlutterForm(),
    );
  }
}
