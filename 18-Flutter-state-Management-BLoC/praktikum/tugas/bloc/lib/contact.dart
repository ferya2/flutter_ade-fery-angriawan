import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'package:assets_dialog/bloc/contact_event.dart';
import 'package:assets_dialog/bloc/contact_bloc.dart';
import 'package:assets_dialog/models/contact_data.dart';
import 'galery.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactBloc = ContactBloc();

    return MaterialApp(
      home: ContactPage(contactBloc: contactBloc),
      routes: {
        '/contact': (context) => Contact(),
        '/gallery': (context) => GalleryApp(),
      },
    );
  }
}

class ContactPage extends StatefulWidget {
  final ContactBloc contactBloc;

  const ContactPage({Key? key, required this.contactBloc}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;

  List<ContactData> contacts = [];

  final namaController = TextEditingController();
  final nomorController = TextEditingController();

  PlatformFile? _selectedFile;

  @override
  void dispose() {
    namaController.dispose();
    nomorController.dispose();
    super.dispose();
  }

  void tambahKontak() {
    final namaBaru = namaController.text;
    final nomorBaru = nomorController.text;

    final newContact = ContactData(
      name: namaBaru,
      nomor: nomorBaru,
      date: _dueDate,
      color: _currentColor,
      file: _selectedFile,
    );

    widget.contactBloc.add(AddContact(newContact));

    namaController.clear();
    nomorController.clear();
  }

  void hapusKontak(int index) {
    widget.contactBloc.add(DeleteContact(index));
  }

  void updateKontak(int index) {
    final contact = contacts[index];

    final updatedContact = ContactData(
      name: namaController.text,
      nomor: nomorController.text,
      date: _dueDate,
      color: _currentColor,
      file: _selectedFile,
    );
    widget.contactBloc.add(UpdateContact(index, updatedContact));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title:
                  const Text('Contact', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:
                  const Text('Gallery', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pushNamed('/gallery');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const Icon(
                Icons.contact_phone,
                size: 24,
                color: Color.fromARGB(173, 80, 78, 79),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Create New Contacts',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 5.0),
              const Text(
                'A dialog is a type of modal window ',
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.visible,
                maxLines: 3,
              ),
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: namaController,
                      decoration: const InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Insert Your Name',
                      ),
                    ),
                    TextFormField(
                      controller: nomorController,
                      decoration: const InputDecoration(
                        labelText: 'Nomor',
                        hintText: '+62 ...',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    buildDatePicker(context),
                    const SizedBox(height: 10),
                    buildColorPicker(context),
                    buildFilePicker(),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: tambahKontak,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(186, 93, 6, 83),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('Submit'),
                ),
              ),
              const Text(
                'List Contact',
                style: TextStyle(fontSize: 20),
              ),
              ListView.builder(
                itemCount: contacts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text('Name: ${contact.name}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nomor: ${contact.nomor}'),
                        Text(
                            'Date: ${DateFormat('dd-MM-yyyy').format(contact.date)}'),
                        Container(
                          height: 20,
                          width: 20,
                          color: contact.color,
                        ),
                        Text('File Name: ${contact.file?.name ?? ""}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            updateKontak(index);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            hapusKontak(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1998),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Pick Color'),
          ),
        ),
      ],
    );
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pick File'),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            child: const Text('Pick and Open File'),
          ),
        ),
      ],
    );
  }

  void _openLocalFile(PlatformFile? file) {
    if (file != null) {
      OpenFile.open(file.path);
    }
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    final file = result?.files.first;
    _openLocalFile(file);
    setState(() {
      _selectedFile = file;
    });
  }
}
