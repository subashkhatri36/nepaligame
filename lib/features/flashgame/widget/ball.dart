import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  final double ballX;
  final double ballY;
  final String value;
  final Color col;
  const Ball(
    this.ballX,
    this.ballY, {
    Key? key,
    required this.value,
    required this.col,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(ballX, ballY),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: col,
        ),
        height: 40,
        width: 40,
        child: Center(
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
