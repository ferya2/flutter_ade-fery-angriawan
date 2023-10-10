Future<List<int>> multiplyList(List<int> data, int multiplier) async {
  List<int> result = [];

  for (int value in data) {
    await Future.delayed(Duration(milliseconds: 100)); // Simulasi delay asinkron
    result.add(value * multiplier);
  }

  return result;
}

void main() async {
  List<int> input = [1, 2, 3, 4, 5];
  int pengali = 2; // input pengali

  List<int> multipliedList = await multiplyList(input, pengali);
  print("Input   : $input");  // Menampilkan nilai input
  print("Pengali : $multipliedList");  // Menampilkan list hasil perkalian
}

