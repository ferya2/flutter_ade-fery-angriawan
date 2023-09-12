import 'package:flutter/material.dart';
// import './cuppertino_app.dart';
import './material_app.dart';

void main() {
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Selamat datang di Flutter!'),
      ),
    );
  }
}
