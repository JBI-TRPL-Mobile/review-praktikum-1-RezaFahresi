import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/drawer.dart';
class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Penulis: ${book.author}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Text(
              book.Descripsi,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

AppDrawer() {
}