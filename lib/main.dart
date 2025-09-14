import 'package:flutter/material.dart';

void main() {
  runApp(MinApp());
}

class MinApp extends StatelessWidget {
  const MinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 500,
            width: 500,
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(width: 100, height: 200, color: Colors.amber),
                      Column(
                        children: [
                          Container(width: 100, height: 100, color: Colors.red),
                        ],
                      ),
                      Align(
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
