import 'package:flutter/material.dart';

void main() {
  runApp(
    Row(
      textDirection: TextDirection.ltr,
      children: [
        Container(
          color: Colors.red,
          child: Text('Hello!', textDirection: TextDirection.ltr),
        ),
        Container(
          color: Colors.green,
          child: Text('Goodbye!', textDirection: TextDirection.ltr),
        ),
      ],
    ),
  );
}
