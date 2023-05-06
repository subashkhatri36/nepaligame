import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepaligame/features/flashgame/widget/ball.dart';
import 'package:nepaligame/features/flashgame/widget/missile.dart';
import 'package:nepaligame/features/flashgame/widget/player_x.dart';
import 'package:nepaligame/widgets/button/flash_game_button.dart';

enum direction { LEFT, RIGHT }

class FlashGamePage extends StatefulWidget {
  const FlashGamePage({Key? key}) : super(key: key);

  @override
  State<FlashGamePage> createState() => _FlashGamePageState();
}

class _FlashGamePageState extends State<FlashGamePage> {
  late Timer gameStartTimer;
  bool ballHit = false;

  var name = ['a', 'b', 'c', 'd', 'e', 'f'];
  var ballColor = [
    Colors.yellow,
    Colors.grey,
    Colors.black,
    Colors.amberAccent,
    Colors.green,
    Colors.purple
  ];
  String currentName = '';
  int index = 0;
  //
  double playerX = 0;

  // its missale x cordinate
  double missaleX = 0;

  //its missale y cordinate
  double missaleY = 1;

  //[missaleHeight] it is the height of missale which is change
  double missaleHeight = 10;

  //
  bool missShot = false;

  //ball varaiable
  double ballX = 0.5;
  double ballY = 0;

  var ballDirection = direction.LEFT;

  void playGame() {
    double time = 0;
    double height = 0;
    index = 0;
    double velocity = 90; //jumping ball

    gameStartTimer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      //quadratic equation that models a bounce(upside down parabola)
      height = -5 * time * time + velocity * time;

      //if the ball is reach the ground reset the ground
      if (height < 0) {
        time = 0;
      }
      setState(() {
        ballY = heightToPosition(height);
      });

      if (ballX - 0.02 < -1) {
        ballDirection = direction.RIGHT;
      } else if (ballX + 0.005 > 1) {
        ballDirection = direction.LEFT;
      }
      setState(() {
        if (ballDirection == direction.LEFT) {
          ballX -= 0.005;
        } else if (ballDirection == direction.RIGHT) {
          ballX += 0.005;
        }
      });

      //check if ball hits the player
      if (playerDies()) {
        timer.cancel();
        print('dead');
      }

      time += 0.1;
    });
  }

  //codinate position base on height of the widget
  double heightToPosition(double height) {
    double totalHeight = MediaQuery.of(context).size.height * 3 / 4;
    double position = 1 - 2 * height / totalHeight;
    return position;
  }

  void moveLeft() {
    setState(() {
      if (playerX - 0.1 < -1) {
        // do nothing
      } else {
        playerX -= 0.1;
      }

      //only make the x cordinate the same when isn't in the middle of a shot
      if (!missShot) {
        missaleX = playerX;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (playerX + 0.1 > 1) {
        // do nothing
      } else {
        playerX += 0.1;
      }
      missaleX = playerX;
    });
  }

  bool playerDies() {
    //if the ball position and the player position are the same then player dies
    if ((ballX - playerX).abs() < 0.05 && ballY > 0.95) {
      return true;
    } else {
      return false;
    }
  }

  void fireMissale() {
    if (missShot == false) {
      Timer.periodic(const Duration(microseconds: 30), (timer) {
        missShot = true;
        setState(() {
          //stop missile when it reaches top of screen
          if (missaleHeight > MediaQuery.of(context).size.height * 3 / 4) {
            resetMissile();
            timer.cancel();
          } else {
            missaleHeight += 10;
          }

          //check if missle hit the ball
          if (ballY > heightToPosition(missaleHeight) &&
              (ballX - missaleX).abs() < 0.3) {
            timer.cancel();
            ballHit = true;
            changeIndex();
            resetMissile();
          }
        });
      });
    }
  }

  resetMissile() {
    missaleX = playerX;
    missaleHeight = 10;
    missShot = false;
  }

  changeIndex() {
    print(currentName);
    if (index < name.length - 1) {
      index++;
      currentName = name[index];
      ballHit = false;
      ballY = -0.6;
      ballX = Random().nextDouble();
    }
    {
      //game level finished
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        autofocus: true,
        onKey: (event) {
          if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
            moveLeft();
          } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
            moveRight();
          }
          if (event.isKeyPressed(LogicalKeyboardKey.space)) {
            fireMissale();
          }
        },
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.pink[100],
                  child: Center(
                    child: Stack(
                      children: [
                        if (!ballHit)
                          Ball(
                            ballX,
                            ballY,
                            col: ballColor[index],
                            value: currentName,
                          ),
                        Missile(
                            missaleHeight: missaleHeight,
                            missaleX: missaleX,
                            missaleY: missaleY),
                        Player(playerX),
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: Container(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlashButton(
                    icon: Icons.play_arrow,
                    onpress: playGame,
                  ),
                  FlashButton(
                    icon: Icons.arrow_back,
                    onpress: moveLeft,
                  ),
                  FlashButton(
                    icon: Icons.arrow_upward,
                    onpress: fireMissale,
                  ),
                  FlashButton(
                    icon: Icons.arrow_forward,
                    onpress: moveRight,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
