void main() {
  double jariJariLingkaran = 5.0; // Ganti dengan jari-jari lingkaran yang diinginkan
  double luas = hitungLuasLingkaran(jariJariLingkaran);
  print("Luas Lingkaran: $luas");
}

double hitungLuasLingkaran(double jariJari) {
  return 3.14 * jariJari * jariJari;
}
