import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final String result;

  const ResultPage({Key? key, required this.result})
      : super(key: key); // Constructor

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  bool showFullText = false; // Flag to show full text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rekomendasi Smartphone (AI)",
          style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(15),
          ),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  showFullText ||
                          widget.result.length <=
                              300 // Show full text or first 300 characters
                      ? widget.result //  Show rsult full text
                      : '${widget.result.substring(0, 300)}${String.fromCharCode(8230)}',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                if (widget.result.length > 300)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showFullText = !showFullText; // Toggle showFullText
                      });
                    },
                    child: Text(
                      showFullText ? "Tutup" : "Selengkapnya",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
