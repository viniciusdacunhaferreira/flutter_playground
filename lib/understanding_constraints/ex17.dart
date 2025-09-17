import 'package:flutter/material.dart';

void main() {
  runApp(
    UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          width: double.infinity,
          height: 100,
          color: Colors.red,
        ),
      ),
    ),
  );
}
