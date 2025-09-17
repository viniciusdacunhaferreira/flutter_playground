import 'package:flutter/material.dart';

void main() {
  runApp(
    FittedBox(
      child: Text(
        'Some Example Text.',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
