import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eksplorasi',
      home: ImageGenerator(),
    );
  }
}

class ImageGenerator extends StatefulWidget {
  const ImageGenerator({Key? key}) : super(key: key);

  @override
  _ImageGeneratorState createState() => _ImageGeneratorState();
}

class _ImageGeneratorState extends State<ImageGenerator> {
  String generatedImageUrl = '';
  TextEditingController textController = TextEditingController();

  void generateImage() {
    // Ambil teks dari input pengguna
    String styleName = textController.text;

    // Pastikan styleName tidak kosong
    if (styleName.isNotEmpty) {
      // Buat URL gambar berdasarkan styleName
      String imageUrl = 'https://api.dicebear.com/7.x/$styleName/svg';

      // Update 'generatedImageUrl' dengan URL gambar yang sesuai
      setState(() {
        generatedImageUrl = imageUrl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Generator',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.brown),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Tampilkan hasil gambar (jika ada)
            if (generatedImageUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.network(
                  generatedImageUrl,
                  width: 200, // Sesuaikan dengan ukuran yang Anda inginkan
                ),
              ),
            const SizedBox(height: 20),
            // Input teks untuk generator
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  labelText: 'Input Text',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Tombol untuk generate gambar
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: generateImage,
              
              child: Text('Generate',style: GoogleFonts.poppins(color: Colors.brown),),
            ),
          ],
        ),
      ),
    );
  }
}
