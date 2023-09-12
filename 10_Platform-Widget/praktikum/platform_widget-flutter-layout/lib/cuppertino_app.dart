import 'package:flutter/cupertino.dart';
import 'soal_prioritas2.dart';

class App extends StatelessWidget {
  final _themeDark = const CupertinoThemeData(
    brightness : Brightness.dark
    );

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDark,
      home: const HomePage(),
    );
  }
}
