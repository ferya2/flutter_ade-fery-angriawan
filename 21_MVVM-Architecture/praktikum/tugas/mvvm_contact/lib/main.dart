import 'package:flutter/material.dart';
import 'package:mvvm_contact/screen/contact/contact_screen.dart';
import 'package:provider/provider.dart';

import 'screen/contact/contact_view_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ContactViewModel(),
        child: ContactView(),
      ),
    ),
  );
}



