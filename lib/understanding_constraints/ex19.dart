import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: FittedBox(
        child: Text(
          'Some Example Text.',
          textDirection: TextDirection.ltr,
        ),
      ),
    ),
  );
}
