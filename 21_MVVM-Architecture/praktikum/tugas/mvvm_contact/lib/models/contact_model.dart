import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class ContactModel {
  final String name;
  final String nomor;
  final DateTime date;
  final Color color;
  final PlatformFile? file;

  ContactModel({
    required this.name,
    required this.nomor,
    required this.date,
    required this.color,
    this.file,
  });
}
