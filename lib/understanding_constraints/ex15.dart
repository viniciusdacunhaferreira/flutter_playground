import 'package:flutter/material.dart';

void main() {
  runApp(
    OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Container(width: 4000, height: 50, color: Colors.red),
    ),
  );
}
