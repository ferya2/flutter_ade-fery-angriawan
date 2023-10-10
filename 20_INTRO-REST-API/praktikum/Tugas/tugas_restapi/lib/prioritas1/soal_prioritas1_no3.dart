import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  // Data yang akan di-PUT
  final putData = {
    // 'id': 1,
    // 'title': 'foo',
    // 'body': 'bar',
    // 'userId': 1,
    
    "book_id": 98,
    "title": "Halo",
    "year" : 2024,
    
    
  };

  try {
    final response = await dio.put(
      // 'https://jsonplaceholder.typicode.com/posts/1',
      'https://bookapi-1-v1905306.deta.app/api/v1/books/98',
      data: putData,
    );

    if (response.statusCode == 200) {
      print('PUT Request Berhasil:');
      print('Status Code: ${response.statusCode}');
      print('Response Data: ${response.data}');
    } else {
      print('PUT Request Gagal:');
      print('Status Code: ${response.statusCode}');
    }
  } catch (e) {
    print('Terjadi Kesalahan: $e');
  }
}
