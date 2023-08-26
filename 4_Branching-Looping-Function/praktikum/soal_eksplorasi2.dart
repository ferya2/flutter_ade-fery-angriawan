// Perkalian
import 'dart:io';

void main() {
  for (int i = 1; i <= 9; i++) { // 9 baris kebawah
    for (int j = 1; j <= 9; j++) { // 9 baris ke kanan
      int hasilkali = i * j;
      stdout.write("${hasilkali.toString().padLeft(4)}");
    }
    stdout.write('\n');
  }
}


