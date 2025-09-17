import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'This is some very very very large text that is too big to fit a regular screen in a single line.',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
