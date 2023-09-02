// Interface untuk bangun datar
abstract class Diagram {
  double getArea();
  double getPerimeter();
}

// class Segitiga yang mengimplementasikan interface Diagram
class Segitiga implements Diagram {
  double alas;
  double tinggi;
  double sisiA;
  double sisiB;
  double sisiC;

  Segitiga(this.alas, this.tinggi, this.sisiA, this.sisiB, this.sisiC);

  @override
  double getArea() {
    return 0.5 * alas * tinggi;
  }

  @override
  double getPerimeter() {
    return sisiA + sisiB + sisiC;
  }
}

// class Trapesium yang mengimplementasikan interface Diagram
class Trapesium implements Diagram {
  double sisiA;
  double sisiB;
  double tinggi;
  double sisiM;

  Trapesium(this.sisiA, this.sisiB, this.tinggi, this.sisiM);

  @override
  double getArea() {
    return 0.5 * (sisiA + sisiB) * tinggi;
  }

  @override
  double getPerimeter() {
    return sisiA + sisiB + 2 * sisiM;
  }
}

// class Lingkaran yang mengimplementasikan interface Diagram
class Lingkaran implements Diagram {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double getArea() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * jariJari;
  }
}

void main() {
  // Membuat objek-objek bangun datar
  Segitiga segitiga = Segitiga(6, 8, 5, 6, 7);
  Trapesium trapesium = Trapesium(4, 6, 5, 7);
  Lingkaran lingkaran = Lingkaran(3);

  // Menghitung dan mencetak luas dan keliling masing-masing bangun datar
  print('Luas dan Keliling Segitiga:');
  print('Luas: ${segitiga.getArea()}');
  print('Keliling: ${segitiga.getPerimeter()}');

  print('\nLuas dan Keliling Trapesium:');
  print('Luas: ${trapesium.getArea()}');
  print('Keliling: ${trapesium.getPerimeter()}');

  print('\nLuas dan Keliling Lingkaran:');
  print('Luas: ${lingkaran.getArea()}');
  print('Keliling: ${lingkaran.getPerimeter()}');
}
