// Function untuk menghitung rata-rata dan membulatkannya ke atas
int hitungRatarata(List<int> values) {
  int sum = 0;
  for (int value in values) {
    sum += value;
  }
  double rataRata = sum / values.length; // Menghitung rata-rata
  return rataRata.ceil(); // Memanggil metode ceil() untuk membulatkan rata-rata ke atas
}

void main() {
  List<int> inputan = [7, 5, 3, 5, 2, 1];
  int ratarata = hitungRatarata(inputan); // Memanggil function hitungRatarata

  print("Input    : $inputan"); // Mencetak list input
  print("Rata-rata: $ratarata"); // Mencetak nilai rata-rata yang telah dibulatkan ke atas
}

