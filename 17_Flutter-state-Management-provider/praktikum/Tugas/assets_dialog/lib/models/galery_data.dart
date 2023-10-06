import 'package:flutter/foundation.dart';

class GalleryData extends ChangeNotifier {
  List<String> _imagePaths = [
    'assets/background.jpg',
    'assets/kalilinux.png',
    'assets/background.jpg',
    'assets/kalilinux.png',
    'assets/background.jpg',
    'assets/kalilinux.png',
    'assets/background.jpg',
    'assets/kalilinux.png',
    // Tambahkan URL gambar lainnya di sini
  ];

  List<String> get imagePaths => _imagePaths;

  void addImagePath(String imagePath) {
    _imagePaths.add(imagePath);
    notifyListeners();
  }
}
