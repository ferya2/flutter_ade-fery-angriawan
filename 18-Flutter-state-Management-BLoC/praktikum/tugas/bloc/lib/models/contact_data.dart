import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ContactData {
  final String name;
  final String nomor;
  final DateTime date;
  final Color color;
  final PlatformFile? file;

  ContactData({
    required this.name,
    required this.nomor,
    required this.date,
    required this.color,
    this.file,
  });
}
