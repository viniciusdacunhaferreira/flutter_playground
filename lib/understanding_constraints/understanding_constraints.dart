import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 0,
          maxWidth: 300,
          minHeight: 0,
          maxHeight: 80,
        ),
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFE2E2A5)),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            decoration: BoxDecoration(color: Color(0xFF5454C2)),
          ),
          Container(
            width: 140,
            height: 30,
            decoration: BoxDecoration(color: Color(0xFF459415)),
          ),
        ],
      ),
    );
  }
}
