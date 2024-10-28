import 'package:flutter/material.dart';
import 'package:passing_data/screens/profile.dart'; // Import halaman profil

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Memeriksa apakah username dan password tidak kosong
    if (_usernameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              HalamanProfil(username: _usernameController.text),
        ),
      );
    } else {
      // Tampilkan pesan kesalahan jika username atau password kosong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username dan password harus diisi')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Nama Pengguna'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Kata Sandi'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 80),
              ),
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
