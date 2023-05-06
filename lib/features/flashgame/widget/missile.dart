import 'package:flutter/material.dart';

class Missile extends StatelessWidget {
  final double missaleX, missaleY, missaleHeight;
  const Missile({
    Key? key,
    required this.missaleHeight,
    required this.missaleX,
    required this.missaleY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(missaleX, missaleY),
      child: Container(
        width: 3,
        height: missaleHeight,
        color: Colors.red,
      ),
    );
  }
}
