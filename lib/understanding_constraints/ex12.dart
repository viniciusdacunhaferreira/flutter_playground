import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(width: 100, height: 100, color: Colors.red),
      ),
    ),
  );
}
