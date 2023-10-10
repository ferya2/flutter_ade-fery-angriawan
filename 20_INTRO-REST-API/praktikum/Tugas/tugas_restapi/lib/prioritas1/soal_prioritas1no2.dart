import 'package:tugas_restapi/utils/api/fetchkontak.dart';

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}
void main() {
  fetchContacts();
}