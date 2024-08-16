import 'package:flutter/material.dart';

import 'game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schulte Table',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const GamePage(size: 5),
    );
  }
}
