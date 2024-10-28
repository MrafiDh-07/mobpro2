import 'package:flutter/material.dart';
import 'package:passing_data/screens/edit_profile.dart'; // Import halaman edit profil

class HalamanProfil extends StatefulWidget {
  final String username;

  const HalamanProfil({super.key, required this.username});

  @override
  _HalamanProfilState createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  String _nama = "";
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nama = widget.username;
    _nameController.text = _nama;
  }

  void _editProfil() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HalamanEditProfil(
          namaSekarang: _nama,
          onUpdate: (namaBaru) {
            setState(() {
              _nama = namaBaru;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editProfil,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 20),
            Text(
              _nama,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
