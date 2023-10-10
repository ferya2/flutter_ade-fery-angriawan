void main() {
  // Buat list yang berisi sub-list dengan dua elemen di setiap sub-list
  List<List<dynamic>> listBuahBuahan = [
    ["apel", 50],
    ["pisang", 130],
    ["alpuket", 110],
  ];

  // Buat map kosong untuk menyimpan data dari listBuahBuahan
  Map<String, int> buahbuahanMap = {};

  // Loop untuk setiap sub-list dalam listBuahBuahan
  for (List<dynamic> subList in listBuahBuahan) {
    String namaBuah = subList[0]; // Ambil nama buah dari sub-list
    int jumlahBuah = subList[1]; // Ambil kuantitas buah dari sub-list
    buahbuahanMap[namaBuah] = jumlahBuah; // Simpan dalam map dengan nama buah sebagai kunci dan kuantitas sebagai nilai
  }

  // Cetak listbuah dan map
  print("List Buah: $listBuahBuahan");
  print("Buah Map: $buahbuahanMap");
}

