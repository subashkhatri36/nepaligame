import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepaligame/features/bagchal/board.dart';

class BagchalPage extends StatefulWidget {
  const BagchalPage({Key? key}) : super(key: key);

  @override
  State<BagchalPage> createState() => _BagchalPageState();
}

final pathCordinate = [
  [-0.7200000000000005, -0.9500000000000006],
  [-0.3600000000000002, -0.9500000000000006],
  [-0.010000000000000024, -0.9500000000000006],
  [0.36000000000000015, -0.9500000000000006],
  [0.7100000000000004, -0.9500000000000006],
  [0.7100000000000004, -0.5000000000000002],
  [0.3600000000000001, -0.5000000000000002],
  [2.7755575615628914e-17, -0.5000000000000002],
  [-0.36, -0.5000000000000002],
  [-0.7200000000000003, -0.4700000000000002],
  [-0.7200000000000003, 0.009999999999999981],
  [-0.36, 0.009999999999999981],
  [8.326672684688674e-17, 0.009999999999999981],
  [0.3600000000000001, -0.020000000000000018],
  [0.6900000000000004, -0.020000000000000018],
  [0.7200000000000004, 0.4600000000000001],
  [0.3600000000000001, 0.4600000000000001],
  [2.7755575615628914e-17, 0.4600000000000001],
  [-0.36, 0.4900000000000001],
  [-0.7200000000000003, 0.4900000000000001],
  [-0.7200000000000003, 0.9100000000000005],
  [-0.36, 0.9100000000000005],
  [8.326672684688674e-17, 0.9100000000000005],
  [0.3600000000000000, 0.9100000000000005],
  [0.6900000000000004, 0.9100000000000005]
];

class _BagchalPageState extends State<BagchalPage> {
  double x = 0;
  double y = 0;
  void moveLeft() {
    setState(() {
      if (x - 0.03 < -1) {
        // do nothing
      } else {
        x -= 0.03;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (x + 0.03 > 1) {
        // do nothing
      } else {
        x += 0.03;
      }
    });
  }

  moveUp() {
    setState(() {
      if (y - 0.03 < -1) {
        // do nothing
      } else {
        y -= 0.03;
      }
    });
  }

  moveDown() {
    setState(() {
      if (y + 0.03 > 1) {
        // do nothing
      } else {
        y += 0.03;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .7;
    print('[$x,$y]');
    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          moveLeft();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          moveRight();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
          moveUp();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
          moveDown();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                color: Colors.pink,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: //Add this CustomPaint widget to the Widget Tree
                    CustomPaint(
                  size: Size(
                      width,
                      (width * 0.6864244741873805)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: BagchalBoard(color: Colors.red),
                )),
            Container(
              alignment: Alignment(x, y),
              child: Container(
                width: 30,
                height: 30,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
