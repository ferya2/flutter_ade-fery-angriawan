// Function untuk menghitung faktorial dari suatu angka
Future<int> hitungFaktorial(int n) async {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    int hasil = n;
    for (int i = n - 1; i >= 1; i--) {
      hasil *= i;
    }
    return hasil;
  }
}

void main() async {
  int inputAngka = 5; // Angka yang akan dihitung faktorialnya
  int faktorial = await hitungFaktorial(inputAngka); // Menghitung faktorial dengan function yang diberikan

  print("Inputan Angka : $inputAngka"); // Mencetak angka input
  print("Faktorial     : $faktorial"); // Mencetak hasil faktorial
}
