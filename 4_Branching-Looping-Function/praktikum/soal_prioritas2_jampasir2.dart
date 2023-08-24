import 'dart:io';

void main() {
  var tinggi = 5;

  for (var i = tinggi - 1; i >= 1; i--) {
    for (var j = 1; j <= tinggi - i; j++) {
      stdout.write(" ");
    }
    for (var k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print('');
  }

  for (var i = 1; i <= tinggi; i++) {
    for (var j = 1; j <= tinggi - i; j++) {
      stdout.write(" ");
    }
    for (var k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print('');
  }
}
