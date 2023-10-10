import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  final url = 'https://bookapi-1-v1905306.deta.app/api/v1/books/';

  final bookData = {
    'year': 3, 
    'book_id': '98', 
    'tittle': 'Testing' 
  };

  try {
    final response = await dio.post(url, data: bookData);

    if (response.statusCode == 201) {
      print('Data berhasil dikirim!');
    } else {
      print('Gagal mengirim data. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Terjadi kesalahan: $error');
  }
}
// https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/