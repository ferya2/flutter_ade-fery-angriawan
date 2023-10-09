import 'dart:convert';

import 'package:dio/dio.dart';

// void main() {
//   Dio()
//       .get(
//           "https://bookapi-1-v1905306.deta.app/api/v1/books/")
//       .then((response) {
//     print(response);
//   });
// }
// "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts"

void main() {
  var dataMap = {
    "name": "Fery Angriawan",
    "phone": "081234567890",
  };
  var dataJSON = jsonEncode(dataMap);
  print(dataJSON);
}

// void main() {
//   var dataJSON = '("name": "Fery", "phone": "081234567890")';
//   var dataMap = jsonDecode(dataJSON);
//   print(dataMap);
// }
