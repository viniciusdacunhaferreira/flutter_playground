import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(
          child: Container(
            color: Colors.blue,
            child: Column(
              children: [
                Text('Hello!'),
                Text('Goodbye!'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
