class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  int volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  int sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override // method ovverride untuk kubus
  int volume() {
    return sisi * sisi *sisi; 
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi) : super(panjang, lebar, tinggi);

  @override // method ovverride untuk balok
  int volume() {
    return panjang * lebar * tinggi; 
  }
}

void main() {
  Kubus kubus = Kubus(17);
  print('Volume Kubus = ${kubus.volume()}');

  Balok balok = Balok(9, 3, 5);
  print('Volume Balok = ${balok.volume()}');
}
