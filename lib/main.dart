import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';
import 'pages/about_page.dart';

void main() {
  runApp(KatalogBukuApp());
}

class KatalogBukuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.routName,
      routes: {
        MyHomePage.routName: (context) => MyHomePage(),
        DetailPage.routeName: (context) => DetailPage(),
        AboutPage.routeName: (context) => AboutPage(),
      },
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return OrientationBuilder(
              builder: (context, orientation) {
                return child!;
              },
            );
          },
        );
      },
    );
  }
}