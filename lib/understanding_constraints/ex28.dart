import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
  );
}
