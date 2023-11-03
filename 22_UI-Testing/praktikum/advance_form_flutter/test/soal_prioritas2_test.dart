import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advance_form_flutter/soal_prioritas2.dart';

void main() {
  testWidgets('Cek Teks di UI Elements', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Contact(),
    ));

    expect(find.text('Contact'), findsOneWidget);
    expect(find.text('Create New Contacts'), findsOneWidget);
    expect(find.text('Submit'), findsOneWidget);

    expect(find.widgetWithText(TextFormField, 'Nama'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'Nomor'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Submit'), findsOneWidget);
  });
  testWidgets('Button untuk memilih warna harus ...',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ContactPage(),
    ));

    await tester.pump();

    expect(find.text('Pick Color'), findsOneWidget);
  });

  testWidgets('Button untuk memilih file harus ...',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ContactPage(),
    ));

    await tester.pump();

    expect(find.text('Pick and Open File'), findsOneWidget);
  });

  testWidgets('Date Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ContactPage(),
    ));

    await tester.pump();

    expect(find.text('Date'), findsOneWidget);
  });

  testWidgets('Color Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ContactPage(),
    ));

    await tester.pump();

    expect(find.text('Color'), findsOneWidget);
  });

  testWidgets('File Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ContactPage(),
    ));

    await tester.pump();

    expect(find.text('Pick File'), findsOneWidget);
  });
}
