import 'package:advance_form_flutter/soal_prioritas1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul App harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Interactive Widget'), findsOneWidget);
  });

  testWidgets('Text Button pada DatePicker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Select'), findsOneWidget);
  });

  testWidgets('Button untuk memilih warna harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Pick Color'), findsOneWidget);
  });

  testWidgets('Button untuk memilih file harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Pick and Open File'), findsOneWidget);
  });

  testWidgets('Date Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Date'), findsOneWidget);
  });

  testWidgets('Color Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Color'), findsOneWidget);
  });

  testWidgets('File Picker harus ...', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    await tester.pump();

    expect(find.text('Pick File'), findsOneWidget);
  });
}
