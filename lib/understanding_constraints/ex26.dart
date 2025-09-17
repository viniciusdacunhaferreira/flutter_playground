import 'package:flutter/material.dart';

void main() {
  runApp(
    Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Text(
              'This is a very long text that won’t fit the line.',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Text('Goodbye!', textDirection: TextDirection.ltr),
          ),
        ),
      ],
    ),
  );
}
