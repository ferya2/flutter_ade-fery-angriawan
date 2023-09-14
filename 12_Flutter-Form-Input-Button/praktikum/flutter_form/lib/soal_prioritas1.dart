import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  
  List<String> namaContact = [
    'Nama 1 ',
    'Nama 2 ',
    'Nama 3',
    'Nama 4 ',
    'Nama 5 ',
    'Nama 6 ',
    'Nama 7',
    'Nama 8 ',
    'Nama 9 ',
    'Nama 10 ',
  ];
  List<String> nomorHp = [
    '+628123456789 ',
    '+6281234567810 ',
    '+6281234567811 ',
    '+6281234567812 ',
    '+6281234567813 ',
    '+6281234567814 ',
    '+6281234567815 ',
    '+6281234567816 ',
    '+6281234567817 ',
    '+6281234567818 ',
  ];

  final namaController = TextEditingController();
  final nomorController = TextEditingController();

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

      namaContact.add(namaBaru);
      nomorHp.add(nomorBaru);

      namaController.clear();
      nomorController.clear();
    });
  }

  void hapusKontak(int index) {
    setState(() {
      namaContact.removeAt(index);
      nomorHp.removeAt(index);
    });
  }

  void updateKontak(int index) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      String namaLama = namaContact[index];
      String nomorLama = nomorHp[index];

      TextEditingController namaController =
          TextEditingController(text: namaLama);
      TextEditingController nomorController =
          TextEditingController(text: nomorLama);

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
                namaContact[index] = namaController.text;
                nomorHp[index] = nomorController.text;
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: const Color.fromARGB(186, 93, 6, 83),
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
                    const SizedBox(height: 16.0),
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
                  ],
                ),
              ),
              const Text(
                'List Contact',
                style: TextStyle(fontSize: 20),
              ),
              ListView.builder(
                itemCount: namaContact.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(namaContact[index]),
                    subtitle: Text(nomorHp[index]),
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
}
