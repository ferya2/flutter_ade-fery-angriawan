import 'package:flutter/material.dart';
import 'contact.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GalleryPage(),
      routes: {
        '/contact': (context) => Contact(),
        '/gallery': (context) => GalleryApp(),
      },
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      'assets/background.jpg',
      'https://picsum.photos/id/1/200/300',
      'assets/kalilinux.png',
      // Tambahkan URL gambar lainnya di sini
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          final imagePath = imagePaths[index];
          return GestureDetector(
            onTap: () {
              _showImageDetails(context, imagePath);
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: _buildImageWidget(imagePath),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Contact', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Pindah ke halaman Contact saat item Contact diklik
                Navigator.of(context).pushNamed('/contact');
              },
            ),
            ListTile(
              title: const Text('Gallery', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Tutup drawer saat item Gallery diklik
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWidget(String path) {
    if (path.startsWith('https://') || path.startsWith('http://')) {
      // Gambar dari URL
      return Image.network(path);
    } else {
      // Gambar dari local assets
      return Image.asset(path);
    }
  }

  void _showImageDetails(BuildContext context, String imagePath) {
    showBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Text('Tampilkan gambar di halaman baru?'),
            ),
            ListTile(
              leading: const Icon(Icons.check),
              title: const Text('Ya'),
              onTap: () {
                Navigator.pop(context); // Tutup bottom sheet
                _navigateToImagePage(context, imagePath);
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Tidak'),
              onTap: () {
                Navigator.pop(context); // Tutup bottom sheet
              },
            ),
          ],
        );
      },
    );
  }

  void _navigateToImagePage(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImagePage(imagePath: imagePath),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  final String imagePath;

  const ImagePage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detail'),
      ),
      body: Center(
        child: _buildImageWidget(imagePath),
      ),
    );
  }

  Widget _buildImageWidget(String path) {
    if (path.startsWith('https://') || path.startsWith('http://')) {
      // Gambar dari URL
      return Image.network(path);
    } else {
      // Gambar dari local assets
      return Image.asset(path);
    }
  }
}
