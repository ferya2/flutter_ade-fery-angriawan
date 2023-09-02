// Definisikan kelas Calculator
class Kalkulator {
  // Metode untuk melakukan penjumlahan dua bilangan
  double penjumlahan(double a, double b) {
    return a + b;
  }

  // Metode untuk melakukan pengurangan dua bilangan
  double pengurangan(double a, double b) {
    return a - b;
  }

  // Metode untuk melakukan perkalian dua bilangan
  double perkalian(double a, double b) {
    return a * b;
  }

  // Metode untuk melakukan pembagian dua bilangan
  double pembagian(double a, double b) {
    // Cek apakah pembagi bukan nol
    if (b != 0) {
      return a / b; // Lakukan pembagian jika pembagi bukan nol
    } else {
      throw Exception("Pembagian dengan nol tidak dapat dilakukan.");
    }
  }
}

void main() {
  // Buat objek kalkulator
  Kalkulator kalkulator = Kalkulator();

  // Lakukan penjumlahan
  double hasilPenjumlahan = kalkulator.penjumlahan(5, 3);
  print("Hasil Penjumlahan: $hasilPenjumlahan");

  // Lakukan pengurangan
  double hasilPengurangan = kalkulator.pengurangan(10, 4);
  print("Hasil Pengurangan: $hasilPengurangan");

  // Lakukan perkalian
  double hasilPerkalian = kalkulator.perkalian(6, 7);
  print("Hasil Perkalian: $hasilPerkalian");

  // Lakukan pembagian dan tangani pengecualian jika pembagian dengan nol
  try {
    double hasilPembagian = kalkulator.pembagian(20, 5);
    print("Hasil Pembagian: $hasilPembagian");
  } catch (e) {
    print(e);
  }
}
