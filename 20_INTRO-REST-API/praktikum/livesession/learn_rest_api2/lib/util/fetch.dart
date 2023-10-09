import 'package:dio/dio.dart';

var dio = Dio();

Future<dynamic> deleteData(int bookId) async {
  String url = "https://bookapi-1-v1905306.deta.app/api/v1/books/$bookId";
  var responses = await dio.delete(url);
  return responses.data;
}

Future<dynamic> updateData(int bookId, Map<String, Object> data) async {
  String url = "https://bookapi-1-v1905306.deta.app/api/v1/books/$bookId";
  var response = await dio.put(url, data: data);
  print(response);
  return response.data;
}