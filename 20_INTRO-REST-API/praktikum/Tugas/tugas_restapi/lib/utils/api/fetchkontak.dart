import 'package:dio/dio.dart';
import 'package:tugas_restapi/prioritas1/soal_prioritas1no2.dart';

void fetchContacts() async {
  final response = await Dio().get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');
  if (response.statusCode == 200) {
    final jsonDataList = response.data as List<dynamic>;
    final contacts = jsonDataList.map((jsonData) => Contact.fromJson(jsonData)).toList();

    for (var contact in contacts) {
      print('ID: ${contact.id}');
      print('Name: ${contact.name}');
      print('Phone: ${contact.phone}');
      print('--------------------');
    }
  } else {
    throw Exception('Failed to load contacts');
  }
}
