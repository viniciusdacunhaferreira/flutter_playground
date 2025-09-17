// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    FittedBox(
      child: Container(
        height: 20,
        width: double.infinity,
      ),
    ),
  );
}
