import 'package:flutter/material.dart';
import 'package:nepaligame/features/bagchal/board.dart';

class BagchalPage extends StatefulWidget {
  const BagchalPage({Key? key}) : super(key: key);

  @override
  State<BagchalPage> createState() => _BagchalPageState();
}

final List<List<double>> pathCordinate = [
  [0, 1],
  []
];

class _BagchalPageState extends State<BagchalPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .7;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              color: Colors.pink,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: //Add this CustomPaint widget to the Widget Tree
                  CustomPaint(
                size: Size(
                    width,
                    (width * 0.6864244741873805)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: BagchalBoard(color: Colors.red),
              )),
          Container(
            alignment: Alignment(0, 0),
            child: Container(
              width: 30,
              height: 30,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
