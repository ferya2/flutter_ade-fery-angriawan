// Definisikan kelas Buku untuk merepresentasikan informasi tentang buku
class Buku {
  int id;           // Atribut ID buku
  String judul;     // Atribut judul buku
  String penerbit;  // Atribut penerbit buku
  double harga;     // Atribut harga buku
  String kategori;  // Atribut kategori buku

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);  // Konstruktor untuk menginisialisasi atribut
}

// Definisikan kelas TokoBuku untuk mengelola daftar buku
class TokoBuku {
  List<Buku> daftarBuku = [];  // Atribut daftar buku dalam toko

  // Metode untuk menambahkan buku ke daftar buku dalam toko
  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
    print('Buku dengan judul ${buku.judul} ditambahkan.');
  }

  // Metode untuk mendapatkan semua buku dalam daftar
  List<Buku> semuaBuku() {
    return daftarBuku;
  }

  // Metode untuk menghapus buku berdasarkan ID
  void hapusBuku(int id) {
    Buku buku = daftarBuku.firstWhere((buku) => buku.id == id, orElse: () => Buku(0, '', '', 0, ''));

    if (buku.id != 0) {
      daftarBuku.remove(buku);
      print('Buku dengan judul ${buku.judul} dihapus.');
    } else {
      print('Buku dengan ID $id tidak ditemukan.');
    }
  }
}

void main() {
  // Membuat objek TokoBuku
  TokoBuku toko = TokoBuku();

  // Membuat objek buku
  Buku buku1 = Buku(1, 'Seni Tinggal Di Bumi', 'Kanan Publishing', 54000, 'Non - Fiksi');
  Buku buku2 = Buku(2, 'Atomic Habits', 'Gramedia', 100000, 'Pengembangan Diri');

  // Menambahkan buku ke toko
  toko.tambahBuku(buku1);
  toko.tambahBuku(buku2);

  // Menampilkan daftar buku
  print('Daftar Buku:');
  toko.semuaBuku().forEach((buku) {
    print('${buku.id} - ${buku.judul} - ${buku.penerbit} - ${buku.harga} - ${buku.kategori}');
  });

  // Menghapus buku berdasarkan ID
  toko.hapusBuku(1);

  // Menampilkan daftar buku setelah dihapus
  print('Daftar Buku setelah dihapus:');
  toko.semuaBuku().forEach((buku) {
    print('${buku.id} - ${buku.judul} - ${buku.penerbit} - ${buku.harga} - ${buku.kategori}');
  });
}
