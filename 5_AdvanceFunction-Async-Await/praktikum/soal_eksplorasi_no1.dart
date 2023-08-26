void main() {
 
  List<String> daftarInput1 = ["amuse", "tommy kaira", "spoon", "HKS", "litchfield", "amuse", "HKS"];
  // Memanggil function hapusDuplikat untuk menghapus duplikat dari daftar input pertama
  List<String> daftarUnik1 = hapusDuplikat(daftarInput1);

  List<String> daftarInput2 = ["JS Racing", "amuse", "spoon", "spoon", "JS Racing", "amuse"];
  // Memanggil function hapusDuplikat untuk menghapus duplikat dari daftar input kedua
  List<String> daftarUnik2 = hapusDuplikat(daftarInput2);

  // Mencetak daftar input dan hasil daftar unik pertama
  print("Daftar Input 1: $daftarInput1");
  print("Daftar Unik 1: $daftarUnik1");

  // Mencetak daftar input dan hasil daftar unik kedua
  print("Daftar Input 2: $daftarInput2");
  print("Daftar Unik 2: $daftarUnik2");
}

// Function untuk menghapus duplikat dari daftar input
List<String> hapusDuplikat(List<String> daftarInput) {
  Set<String> daftarUnikSet = Set<String>(); // Set untuk menyimpan nilai unik sementara
  List<String> daftarUnik = []; // List untuk menyimpan nilai unik yang ditemukan

  // Loop melalui setiap nilai dalam daftar input
  for (String nilai in daftarInput) {
    // Jika nilai belum ada dalam set daftarUnikSet
    if (!daftarUnikSet.contains(nilai)) {
      daftarUnikSet.add(nilai); // Tambahkan nilai ke dalam set untuk memastikan unik
      daftarUnik.add(nilai); // Tambahkan nilai ke dalam list daftarUnik
    }
  }

  return daftarUnik; // Mengembalikan list daftarUnik yang hanya berisi nilai unik
}

