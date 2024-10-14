import 'package:flutter/material.dart';
import '../widgets/drawer.dart';


class AboutPage extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perpustakaan'),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Aplikasi Katalog Buku',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Versi 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Untuk Melihat Daftar buku dan Informasi.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Text(
              'Reza Fahresi',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}