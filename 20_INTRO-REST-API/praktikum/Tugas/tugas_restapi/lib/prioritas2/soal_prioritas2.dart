import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiceBear Avatar',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String avatarUrl = '';

  @override
  void initState() {
    super.initState();
    fetchAvatar();
  }

  Future<void> fetchAvatar() async {
    final response =
        await http.get(Uri.parse('https://api.dicebear.com/7.x/pixel-art/svg'));
    if (response.statusCode == 200) {
      setState(() {
        avatarUrl = response.body;
      });
    } else {
      throw Exception('Failed to load avatar');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceBear Avatar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            avatarUrl.isEmpty
                ? CircularProgressIndicator()
                : SvgPicture.string(
                    avatarUrl,
                    placeholderBuilder: (BuildContext context) =>
                        CircularProgressIndicator(),
                  ),
          ],
        ),
      ),
    );
  }
}
