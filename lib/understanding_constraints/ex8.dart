import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(20.0),
        child: Container(color: Colors.green, width: 30, height: 30),
      ),
    ),
  );
}
