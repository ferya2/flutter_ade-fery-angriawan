void main() {
  // daftar input
  List<String> daftarInput = ["js", "js", "js", "golang", "python", "js", "js", "golang", "rust"];
  
  // Memanggil function menghitung frekuensi untuk menghitung frekuensi kemunculan setiap nilai dalam daftar input
  Map<String, int> hasilFrekuensi = hitungFrekuensi(daftarInput);

  // Mencetak daftar input dan hasil frekuensi
  print("Daftar Input: $daftarInput");
  print("Frekuensi   : $hasilFrekuensi");
}

// Function untuk menghitung frekuensi kemunculan setiap nilai dalam daftar input
Map<String, int> hitungFrekuensi(List<String> daftarInput) {
  Map<String, int> mapFrekuensi = {};

  // Loop melalui setiap nilai dalam daftar input
  for (String nilai in daftarInput) {
    if (mapFrekuensi.containsKey(nilai)) {
      // Jika nilai sudah ada dalam map frekuensi, tambahkan 1 pada frekuensi
      mapFrekuensi[nilai] = mapFrekuensi[nilai]! + 1;
    } else {
      // Jika nilai belum ada dalam map frekuensi, buat entri baru dengan frekuensi 1
      mapFrekuensi[nilai] = 1;
    }
  }

  return mapFrekuensi; // Mengembalikan map frekuensi yang berisi nilai dan frekuensinya
}
