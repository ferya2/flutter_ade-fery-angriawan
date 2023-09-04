import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularPercentIndicator(
//           radius: 60.0,
//           lineWidth: 5.0,
//           percent: 1.0,
//           center: const Text("100%"),
//           progressColor: Colors.red,
//         ),
//       ),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Halo Alterra"), 
          backgroundColor: const Color.fromARGB(255, 21, 138, 25),
        ),
        body: const Center(
          child: Text("Nama saya adalah Ade Fery Angriawan"), 
        ),
      ),
    );
  }
}