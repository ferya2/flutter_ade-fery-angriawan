import 'dart:io';

void main() {
  var jumlahBintang = 8;

  for (var i = 1; i <= jumlahBintang; i++) {
    for (var j = 1; j <= jumlahBintang - i; j++) {
      stdout.write(" ");
    }
    for (var k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print('');
  }
}