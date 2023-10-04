import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/page/login.dart';

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

class Contact extends StatelessWidget {
  const Contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key});

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

  String? _username; // Menyimpan nama pengguna

  @override
  void initState() {
    super.initState();
    _getLoggedInUserName(); // Memanggil fungsi untuk mendapatkan nama pengguna saat halaman diinisialisasi
  }

  // Fungsi untuk mendapatkan nama pengguna dari SharedPreferences
  Future<void> _getLoggedInUserName() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    setState(() {
      _username = username;
    });
  }

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Menghapus semua data di SharedPreferences
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Login(), // Ganti dengan halaman login yang sesuai
    ));
  }

  @override
  void dispose() {
    namaController.dispose();
    nomorController.dispose();
    super.dispose();
  }

  void tambahKontak() {
    setState(() {
      final namaBaru = namaController.text;
      final nomorBaru = nomorController.text;

      final newContact = ContactData(
        name: namaBaru,
        nomor: nomorBaru,
        date: _dueDate,
        color: _currentColor,
        file: _selectedFile,
      );

      contacts.add(newContact);

      namaController.clear();
      nomorController.clear();
      _selectedFile = null;
    });
  }

  void hapusKontak(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  void updateKontak(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final contact = contacts[index];

        TextEditingController namaController =
            TextEditingController(text: contact.name);
        TextEditingController nomorController =
            TextEditingController(text: contact.nomor);

        return AlertDialog(
          title: const Text('Perbarui Kontak'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                ),
              ),
              TextFormField(
                controller: nomorController,
                decoration: const InputDecoration(
                  labelText: 'Nomor',
                ),
              ),
              const SizedBox(height: 10),
              // Build Color Picker
              ElevatedButton(
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
                child: const Text('Ubah Warna'),
              ),
              const SizedBox(height: 10),
              // Build File Picker
              ElevatedButton(
                onPressed: () {
                  _pickFile();
                },
                child: const Text('Pilih File'),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(186, 93, 6, 83),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contacts[index] = ContactData(
                    name: namaController.text,
                    nomor: nomorController.text,
                    date: contact.date,
                    color: _currentColor,
                    file: _selectedFile,
                  );
                });
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(186, 93, 6, 83),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  PlatformFile? _selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            iconSize: 20,
            onPressed: () {
              // Tambahkan aksi ketika ikon coffee ditekan di sini.
              _logout();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
              accountName: Text(
                _username ?? 'User Name', // Menampilkan nama pengguna
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Colors.blueGrey, // Ganti warna avatar sesuai keinginan
                child: Icon(
                  Icons.person,
                  size: 48,
                  color: Colors.white,
                ),
              ),
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
                    // Build Date Picker
                    buildDatePicker(context),
                    const SizedBox(height: 10),
                    // Build Color Picker
                    buildColorPicker(context),
                    // Build File Picker
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
