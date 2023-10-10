void main() {
  int nilai = 90; // Ganti nilai sesuai kebutuhan
  
  String hasil = NilaiMahasiswa(nilai);
  print("Hasil: $hasil");
  
}

String NilaiMahasiswa(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40) {
    return "Nilai B";
  } else if (nilai > 0) {
    return "Nilai C";
  } else {
    return "";
  }
}
