// harga
var buku = 10000;
var pensil = 5000;
var tas = 100000;

// jumlah barang yg kita ambil
var jumlahBuku = 2;
var jumlahPensil = 3;
var jumlahTas = 2;
void main() {
  var totalbeli = TotalBeli(buku, pensil, tas, jumlahBuku, jumlahPensil, jumlahTas);
  print("Total Beli: $totalbeli");
}

int TotalBeli(int Buku, int Pensil, int Tas, int jumlahBuku, int jumlahPensil,int jumlahTas) {
  var totalBuku = Buku * jumlahBuku;
  var totalPensil = Pensil * jumlahPensil;
  var totalTas = Tas * jumlahTas;

  return totalBuku + totalPensil + totalTas;
}
