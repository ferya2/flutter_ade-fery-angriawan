import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Assets',
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            const Image(image: AssetImage('assets/background.jpg')),
            // Text(
            //   'Greeb Lake',
            //   style: TextStyle(fontSize: 30, fontFamily: 'Rowdies'),
            // )
            Text(
              'Green Lake',
              style: GoogleFonts.comicNeue(fontSize: 30),
            )
            // Image(
            //   height: 300,
            //   image: AssetImage('assets/myicon.png')
            //   ),
            //   Image.asset('assets/background.jpg'),
            //   Image.network('https://picsum.photos/id/1/200/300'),
          ],
        ));
  }
}
