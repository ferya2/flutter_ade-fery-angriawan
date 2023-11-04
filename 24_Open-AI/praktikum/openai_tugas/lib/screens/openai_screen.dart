import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openai_tugas/models/open_ai_model.dart';
import 'package:openai_tugas/screens/openai_result.dart';
import 'package:openai_tugas/services/recomendation_service.dart';

class PageRecommendation extends StatefulWidget {
  const PageRecommendation({Key? key}) : super(key: key);

  @override
  State<PageRecommendation> createState() => _PageRecommendationState();
}

class _PageRecommendationState extends State<PageRecommendation> {
  TextEditingController hargaController = TextEditingController();
  TextEditingController kameraController = TextEditingController();
  TextEditingController storageController = TextEditingController();

  void _getRecommendation() async {
    String harga = hargaController.text;
    String kamera = kameraController.text;
    String storage = storageController.text;

    if (harga.isEmpty || kamera.isEmpty || storage.isEmpty) {
      return;
    }

    GPTData result = await RecomendationService.getRecommendation(
      harga: harga,
      kamera: kamera,
      storage: storage,
    );

    String recommendation = result.choices[0].text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(result: recommendation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Open AI',
          style: GoogleFonts.poppins(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
      ),
      backgroundColor: Color.fromARGB(244, 240, 239, 239),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: hargaController,
              decoration: InputDecoration(
                labelText: 'Harga',
                hintText: 'Masukkan Harga RP.',
                hintStyle: GoogleFonts.poppins(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: kameraController,
              decoration: InputDecoration(
                labelText: 'Kamera',
                hintText: 'Masukan spesifikasi kamera',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: storageController,
              decoration: InputDecoration(
                labelText: 'Storage',
                hintText: 'Masukan spesifikasi storage',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _getRecommendation,
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent[700],
                onPrimary: Colors.black,
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Get Recommendation',
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
