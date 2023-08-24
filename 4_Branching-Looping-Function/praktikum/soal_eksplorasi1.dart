import 'dart:io';

void main() {
  stdout.write("Masukkan sebuah bilangan: ");
  int bilangan = int.parse(stdin.readLineSync()!);

  if (isPrime(bilangan)) {
    print("Bilangan prima");
  } else {
    print("Bukan bilangan prima");
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
