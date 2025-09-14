import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  final _isLoaded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _isLoaded
              ? Container(
                  color: Colors.amber,
                  height: 10,
                )
              : Text('YourAwesomeWidget'),
          _isLoaded ? SizedBox() : Text('YourAwesomeWidget'),
        ],
      ),
    );
  }
}
