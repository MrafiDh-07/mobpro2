import 'package:flutter/material.dart';

class HalamanEditProfil extends StatefulWidget {
  final String namaSekarang;
  final Function(String) onUpdate;

  const HalamanEditProfil(
      {super.key, required this.namaSekarang, required this.onUpdate});

  @override
  _HalamanEditProfilState createState() => _HalamanEditProfilState();
}

class _HalamanEditProfilState extends State<HalamanEditProfil> {
  late TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.namaSekarang);
  }

  void _updateProfil() {
    widget.onUpdate(_nameController.text);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama Anda'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateProfil,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 80),
              ),
              child: Text('Perbarui'),
            ),
          ],
        ),
      ),
    );
  }
}
