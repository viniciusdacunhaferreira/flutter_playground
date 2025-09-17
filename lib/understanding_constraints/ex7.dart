import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        color: Colors.red,
        child: Container(color: Colors.green, width: 30, height: 30),
      ),
    ),
  );
}
