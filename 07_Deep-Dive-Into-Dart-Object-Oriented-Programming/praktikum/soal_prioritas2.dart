class Matematika {
  int hasil() {
    throw UnimplementedError('Metode hasil() belum diimplementasikan');
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }
}

void main() {
  KelipatanPersekutuanTerkecil kpt = KelipatanPersekutuanTerkecil(9, 18);
  
  print('Kelipatan Persekutuan Terkecil = ${kpt.hasil()}');

  FaktorPersekutuanTerbesar fpt = FaktorPersekutuanTerbesar(77, 99);
  print('Faktor Persekutuan Terbesar = ${fpt.hasil()}');
  
}

