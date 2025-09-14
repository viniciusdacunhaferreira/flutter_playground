import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Text('Text1'),
            Expanded(
              child: Row(
                children: [
                  Text('Text2'),
                  Spacer(),
                  Text('Text3'),
                ],
              ),
            ),
            // Spacer(),
            Text('Text4'),
          ],
        ),
      ),
    );
  }
}
