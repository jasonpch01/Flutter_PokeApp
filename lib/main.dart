import 'package:flutter/material.dart';
import 'package:flutter_pokeapp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokedexApp',
      home: HomePage(),
    );
  }
}
