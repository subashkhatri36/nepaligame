import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  final double playerX;
  const Player(this.playerX,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment(playerX,1),
        child: Container(height: 50,width: 50,color: Colors.deepPurple,),
      ),
    );
  }
}
