import 'package:flutter/material.dart';
class FlashButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onpress;
  const FlashButton({Key? key,required this.icon,this.onpress,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.grey[100],
          width: 50,height: 50,
            child:Center(child: Icon(icon),),
        ),
      ),
    );
  }
}
