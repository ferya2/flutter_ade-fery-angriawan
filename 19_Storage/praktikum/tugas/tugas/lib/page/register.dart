import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/page/login.dart';

class Register extends StatelessWidget {
  const Register({Key? key});

  Future<void> _register(BuildContext context, String fullName, String username,
      String password) async {
    if (username.length < 6 ||
        !username.contains(RegExp(r'[A-Z]')) ||
        !username.contains(RegExp(r'[0-9]'))) {
      _showErrorDialog(context,
          'Username harus memiliki setidaknya 6 karakter, mengandung angka, dan huruf besar.');
      return;
    }

    if (fullName.isEmpty || username.isEmpty || password.isEmpty) {
      _showErrorDialog(context, 'Semua field harus diisi');
      return;
    }

    // Di sini, Anda dapat menambahkan logika registrasi.
    // Jika registrasi berhasil, simpan username dan password di shared_preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString(
        'password', password); // Tambahkan ini untuk menyimpan password

    await prefs.setBool('isLogged', true);

    _showSuccessDialog(context);
  }

  Future<void> _showSuccessDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Registrasi Berhasil'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Anda berhasil registrasi.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      Login(), // Pindah ke halaman Login saat registrasi berhasil
                ));
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showErrorDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Registrasi Gagal'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment.bottomCenter,
                child: Lottie.asset(
                  'assets/images/login3.json',
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: fullNameController,
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[900],
                  ),
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: GoogleFonts.poppins(color: Colors.blueGrey),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Enter your Full Name',
                    hintStyle: GoogleFonts.poppins(color: Colors.black26),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: usernameController,
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[900],
                  ),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.poppins(color: Colors.blueGrey),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Enter your username',
                    hintStyle: GoogleFonts.poppins(color: Colors.black26),
                    icon: const Icon(
                      Icons.lock_person,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: passwordController,
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[900],
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.poppins(color: Colors.blueGrey),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.poppins(color: Colors.black26),
                    icon: const Icon(
                      Icons.lock,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                  onPressed: () {
                    final fullName = fullNameController.text;
                    final username = usernameController.text;
                    final password = passwordController.text;
                    _register(context, fullName, username, password);
                  },
                  child: Text(
                    'Register',
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
