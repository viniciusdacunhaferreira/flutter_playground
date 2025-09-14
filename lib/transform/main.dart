import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector4;
// import 'package:vector_math/vector_math.dart';
// import 'package:vector_math/vector_math.dart' hide Matrix4;

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xAnglePercentage = 1;
  double yAnglePercentage = 1;
  double zAnglePercentage = 1;
  double tiltPercentage = 1;
  void onXAngleChanged(value) => setState(() => xAnglePercentage = value);
  void onYAngleChanged(value) => setState(() => yAnglePercentage = value);
  void onZAngleChanged(value) => setState(() => zAnglePercentage = value);
  void onTiltChanged(value) => setState(() => tiltPercentage = value);

  @override
  Widget build(BuildContext context) {
    final identityMatrix = <double>[
      // dart format off
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1,
    // dart format on
    ];

    final matrix = Matrix4.fromList(identityMatrix)
      ..rotateX(xAnglePercentage * pi)
      ..rotateY(yAnglePercentage * pi)
      ..rotateZ(zAnglePercentage * pi)
      ..setEntry(
        3,
        0,
        yAnglePercentage > 0.5
            ? yAnglePercentage * tiltPercentage * 0.03
            : -yAnglePercentage * tiltPercentage * 0.03,
      );

    print(matrix.toStr());

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Stack(
                    textDirection: TextDirection.ltr,

                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: matrix,
                        child: Square(),
                      ),
                      Square(
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(bottom: 24),
                // height: 100,
                child: Row(
                  children: [
                    MySlider(
                      label:
                          'X: ${(xAnglePercentage * 180).toStringAsFixed(0)}°',
                      value: xAnglePercentage,
                      onChanged: onXAngleChanged,
                    ),
                    MySlider(
                      label:
                          'Y: ${(yAnglePercentage * 180).toStringAsFixed(0)}°',
                      value: yAnglePercentage,
                      onChanged: onYAngleChanged,
                    ),
                    MySlider(
                      label:
                          'Z: ${(zAnglePercentage * 180).toStringAsFixed(0)}°',
                      value: zAnglePercentage,
                      onChanged: onZAngleChanged,
                    ),
                    MySlider(
                      label: 'Tilt: ${(tiltPercentage).toStringAsFixed(0)}',
                      value: tiltPercentage,
                      onChanged: onTiltChanged,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySlider extends StatelessWidget {
  const MySlider({
    super.key,
    required this.value,
    this.onChanged,
    required this.label,
  });

  final double value;
  final void Function(double value)? onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 24),
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Slider(
          // ignore: deprecated_member_use
          year2023: false,
          value: value,
          min: -1,
          divisions: 36,
          onChanged: onChanged,
          label: value.toStringAsFixed(2),
        ),
      ],
    );
  }
}

class Square extends StatelessWidget {
  const Square({
    super.key,
    this.color = Colors.grey,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        border: BoxBorder.all(),
      ),
    );
  }
}

extension on Matrix4 {
  String toStr() =>
      '[0] ${getRow(0).toStr()}\n'
      '[1] ${getRow(1).toStr()}\n'
      '[2] ${getRow(2).toStr()}\n'
      '[3] ${getRow(3).toStr()}\n';
}

extension on Vector4 {
  String toStr() {
    final s = storage;
    final result =
        '[${s[0].toStr()}, '
        '${s[1].toStr()}, '
        '${s[2].toStr()}, '
        '${s[3].toStr()}]';

    return result;
  }
}

extension on num {
  String toStr() {
    if (isNegative) {
      return toStringAsFixed(1);
    } else {
      return '+${toStringAsFixed(1)}';
    }
  }
}
