import 'dart:math';

import 'package:flutter/material.dart';

var backgroundColor = Colors.grey[200];

TextButton makeTile(int n, BuildContext context) {
  return TextButton(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      splashFactory: NoSplash.splashFactory,
    ),
    onPressed: () => {},
    child: Text(n.toString(), style: const TextStyle(fontSize: 36)),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({super.key, required this.size});

  final int size;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    int nTiles = pow(widget.size, 2).toInt();

    final numbers = List<int>.generate(nTiles, (i) => i + 1);
    numbers.shuffle();

    List<TextButton> tiles = List.generate(nTiles, (index) => makeTile(numbers[index], context));

    return Scaffold(
      appBar: AppBar(title: Text('Size: ${widget.size.toString()}')),
      body: Container(
        color: backgroundColor,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.size,
          ),
          padding: const EdgeInsets.all(24),
          children: tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
