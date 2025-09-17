import 'package:flutter/material.dart';

void main() {
  runApp(
    UnconstrainedBox(
      child: Container(width: double.infinity, height: 100, color: Colors.red),
    ),
  );
}
