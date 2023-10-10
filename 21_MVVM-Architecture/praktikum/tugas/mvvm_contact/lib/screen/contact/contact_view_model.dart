import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import '../../models/contact_model.dart';

class ContactViewModel extends ChangeNotifier {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  PlatformFile? _selectedFile;

  List<ContactModel> contacts = [];

  void tambahKontak(String namaBaru, String nomorBaru, Color currentColor, DateTime dueDate, PlatformFile? selectedFile) {
    final newContact = ContactModel(
      name: namaBaru,
      nomor: nomorBaru,
      date: _dueDate,
      color: _currentColor,
      file: _selectedFile,
    );

    contacts.add(newContact);
    notifyListeners();

    // Reset form
    _selectedFile = null;
  }

  void hapusKontak(int index) {
    contacts.removeAt(index);
    notifyListeners();
  }

  void updateKontak(int index, String namaBaru, String nomorBaru) {
    final contact = contacts[index];
    contacts[index] = ContactModel(
      name: namaBaru,
      nomor: nomorBaru,
      date: contact.date,
      color: _currentColor,
      file: _selectedFile,
    );
    notifyListeners();
  }

  void setColor(Color color) {
    _currentColor = color;
    notifyListeners();
  }

  void setDate(DateTime date) {
    _dueDate = date;
    notifyListeners();
  }

  void pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    final file = result?.files.first;
    _openLocalFile(file);
    _selectedFile = file;
    notifyListeners();
  }

  void _openLocalFile(PlatformFile? file) {
    if (file != null) {
      OpenFile.open(file.path);
    }
  }
}
