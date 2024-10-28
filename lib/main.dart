import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatelessWidget {
  const AplikasiSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HalamanLogin(),
    );
  }
}
