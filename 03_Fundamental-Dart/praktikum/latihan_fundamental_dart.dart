void main() {
  print("----------------------------------------------------------------");

  print("SOAL PRIORITAS 1");
  print("No 1");
  // no 1
  // persegi
  int keliling, luas; //deklarasi variabel
  int sisiPersegi = 20;

  luas = sisiPersegi * 2; //rumus luas s2
  print("Luas Persegi: $luas");
  keliling = sisiPersegi * 4; //rumus keliling s*s*s*S
  print("Keliling Persegi: $keliling");

  // persegi panjang
  int panjang = 10; // deklarasi variabel panjang dan lebar persegi panjang
  int lebar = 5;

  int luasPersegiPanjang = panjang * lebar; // rumus luas Persegi panjang
  print("Luas Persegi Panjang: $luasPersegiPanjang");

  int kelilingPersegiPanjang = 2 * (panjang + lebar); // rumus keliling persegi panjang
  print("Keliling Persegi Panjang: $kelilingPersegiPanjang");

  print("----------------------------------------------------------------");

  print("No 2");
  // no 2
  // Lingkaran
  double jariJari = 7.0; //deklarasi variabel jariJari dengan nilai 7.0

  double luasLingkaran = 3.14 * jariJari * jariJari; // rumus luas Lingkaran
  print("Luas Lingkaran: $luasLingkaran");

  double kelilingLingkaran = 2 * 3.14 * jariJari; // rumus keliling Lingkaran
  print("Keliling Lingkaran: $kelilingLingkaran");

  print("----------------------------------------------------------------");

  print("SOAL PRIORITAS 2");
  print("No 1");
  // no 1
  String namaDepan = "Ade"; // Deklarasi Variabel string namaDepan tengah dan belakang
  String namaTengah = "Fery";
  String namaBelakang = "Angriawan";

  String namaLengkap = namaDepan + namaTengah + namaBelakang;
  print("Nama Lengkap saya adalah: $namaLengkap");

  print("----------------------------------------------------------------");

  // no 2
  print("No 2");
  double jariJariTabung = 5.0;
  double tinggi = 10.0;

  double volumeTabung = 3.14 * jariJariTabung * jariJariTabung * tinggi; // rumus volume
  print("Volume Tabung: $volumeTabung");

  print("----------------------------------------------------------------");

  print("SOAL EKSPLORASI ");
  print("No 1");
  //No 1
  String kata1 = "kasur rusak";
  String kata2 = "mobil balap";

  if (isPalindrom(kata1)) {
    print("$kata1 adalah palindrom.");
  } else {
    print("$kata1 bukan palindrom.");
  }

  if (isPalindrom(kata2)) {
    print("$kata2 adalah palindrom.");
  } else {
    print("$kata2 bukan palindrom.");
  }

  print("----------------------------------------------------------------");

  print("No 2");
  // no 2

  int bilangan = 24;

  print("Faktor dari bilangan $bilangan tersebut adalah:");
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
}

// no 1 soal eksplorasi
bool isPalindrom(String kata) {
  kata = kata
      .replaceAll(" ", "")
      .toLowerCase(); // Hilangkan spasi dan ubah menjadi huruf kecil
  String kataTerbalik = kata.split('').reversed.join(); // Balik urutan karakter
  return kata == kataTerbalik;
}
