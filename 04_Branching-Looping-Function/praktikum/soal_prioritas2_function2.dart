void main() {
  List<int> nilaiNilai = [10, 40, 50];

  for (int nilai in nilaiNilai) {
    int hasilFaktorial = faktorialNomor(nilai);
    print("Faktorial dari $nilai adalah $hasilFaktorial");
  }
}
int faktorialNomor(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * faktorialNomor(n - 1);
  }
}