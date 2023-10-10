class Mobil {
  double kapasitas; // Kapasitas total berat maksimum muatan
  List<Hewan> muatan = []; // List data hewan yang menjadi muatan

  // Konstruktor untuk menginisialisasi kapasitas
  Mobil(this.kapasitas);

  // Method untuk menambah data hewan pada muatan jika kapasitas mencukupi
  void dataMuatan(Hewan hewan) {
    if (kapasitas >= hewan.berat) {
      muatan.add(hewan);
      kapasitas -= hewan.berat;
      print('Hewan ditambahkan ke muatan: Berat sisa kapasitas = $kapasitas kg');
    } else {
      print('Kapasitas tidak mencukupi untuk menambahkan hewan ini.');
    }
  }

  // Method untuk menghitung total muatan yang diangkut oleh mobil
  double totalMuatan() {
    double total = 0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

class Hewan {
  double berat;

  // Konstruktor untuk menginisialisasi berat
  Hewan(this.berat);
}

void main() {
  Mobil mobil = Mobil(100.0); // kapasitas mobil 100 kg

  Hewan kucing = Hewan(4.5);
  Hewan burung = Hewan(0.6);
  Hewan ayam = Hewan(1.5);
  Hewan bunglon = Hewan(5.0);
  Hewan sapi = Hewan(89.9);

  mobil.dataMuatan(kucing);
  mobil.dataMuatan(burung);
  mobil.dataMuatan(ayam);
  mobil.dataMuatan(bunglon);
  mobil.dataMuatan(sapi);

  print('Total muatan dalam mobil: ${mobil.totalMuatan()} kg');
}
