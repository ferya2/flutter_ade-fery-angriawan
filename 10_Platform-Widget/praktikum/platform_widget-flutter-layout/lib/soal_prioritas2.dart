import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'CupertinoApp',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      child: Center(
        child: Text('This is CupertinoApp'),
      ),
    );
  }
}
