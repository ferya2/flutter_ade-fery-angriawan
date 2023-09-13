import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({Key? key}) : super(key: key);

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var radioValue = '';
  var checkValue = false;
  var dropdownValue = 0;

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextField(
              controller: inputController,
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Laki-Laki',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value ?? '';
                  });
                },
              ),
              title: const Text('Laki-laki'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Perempuan',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value ?? '';
                  });
                },
              ),
              title: const Text('Perempuan'),
            ),
            ListTile(
              leading: Checkbox(
                  value: checkValue,
                  onChanged: (bool? value) {
                    setState(() {
                      checkValue = value ?? false;
                    });
                  }),
              title: const Text('Setuju/ Tidak Setuju'),
            ),
            DropdownButton(
              value: dropdownValue,
              onChanged: (int? value) {
                setState(() {
                  dropdownValue = value ?? 0;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 0,
                  child: Text('Pilih..'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('Satu'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Dua'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('Tiga'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sumbit'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
