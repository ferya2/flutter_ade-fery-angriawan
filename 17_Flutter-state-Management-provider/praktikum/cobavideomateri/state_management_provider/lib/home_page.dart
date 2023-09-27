import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/model.dart';
import 'package:state_management_provider/stores/contact.dart' as contact_store;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String phoneNumber = '';
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Book App'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              onChanged: (String value) {
                name = value;
              },
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),
            TextFormField(
              controller: phoneNumberController,
              onChanged: (String value) {
                phoneNumber = value;
              },
              decoration: InputDecoration(labelText: 'Phone Number'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone Number is required';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  contactProvider.add(
                    GetContact(
                      name: name,
                      phoneNumber: phoneNumber,
                    ),
                  );

                  // Bersihkan field setelah penambahan kontak
                  nameController.clear();
                  phoneNumberController.clear();
                }
              },
              child: const Text('Add Number'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contactProvider.contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(contactProvider.contacts[index].name),
                    subtitle: Text(contactProvider.contacts[index].phoneNumber),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
