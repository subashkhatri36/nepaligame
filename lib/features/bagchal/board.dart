import 'package:flutter/material.dart';

/*
 CustomPaint(
        size: Size(
            width,
            (width * 0.6864244741873805)
                .toDouble()),


*/
class BagchalBoard extends CustomPainter {
  final Color color;
  BagchalBoard({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.001496092, size.height * 0.004424513),
        Offset(size.width * 0.9957591, size.height * 0.9960669), paint0stroke);

    Path path1 = Path();
    path1.moveTo(size.width * 0.9942639, size.height * 0.002788245);
    path1.lineTo(size.width * 0.001495891, size.height * 0.9955822);

    Paint paint1stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint1stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path1, paint1stroke);

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Paint paint2stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint2stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.4971319, size.height * 0.002780432),
        Offset(size.width * 0.5009560, size.height * 0.9972089), paint2stroke);

    Paint paint3stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint3stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.0009377113, size.height * 0.5139304),
        Offset(size.width * 0.9952027, size.height * 0.4861811), paint3stroke);

    Paint paint4stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint4stroke.color = color.withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.002314971, size.height * 0.5141866),
        Offset(size.width * 0.4956233, size.height * 0.004437716),
        paint4stroke);

    Paint paint5stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint5stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.4986195, size.height * 0.004415599),
        Offset(size.width * 0.9938394, size.height * 0.4863092), paint5stroke);

    Paint paint6stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint6stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.001484214, size.height * 0.5141616),
        Offset(size.width * 0.5005277, size.height * 0.9960557), paint6stroke);

    Paint paint7stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint7stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.5013576, size.height * 0.9960836),
        Offset(size.width * 0.9927533, size.height * 0.4863343), paint7stroke);

    Paint paint8stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint8stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.2523901, size.height * 0.002803872),
        Offset(size.width * 0.2447419, size.height * 0.9944485), paint8stroke);

    Path path9 = Path();
    path9.moveTo(size.width * 0.7523901, size.height * 0.002788245);
    path9.lineTo(size.width * 0.7399618, size.height * 0.9972479);

    Paint paint9stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint9stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path9, paint9stroke);

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Paint paint10stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint10stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.0009486558, size.height * 0.2576630),
        Offset(size.width * 0.9933002, size.height * 0.2465209), paint10stroke);

    Paint paint11stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint11stroke.color = color.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.0009468126, size.height * 0.7534847),
        Offset(size.width * 0.9932983, size.height * 0.7395571), paint11stroke);

    Path path12 = Path();
    path12.moveTo(size.width * 0.001912046, size.height * 0.004181003);
    path12.lineTo(size.width * 0.9952199, size.height * 0.002785543);

    Paint paint12stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint12stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path12, paint12stroke);

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.9942639, size.height * 0.004181003);
    path13.lineTo(size.width * 0.9952199, size.height * 0.9958245);

    Paint paint13stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint13stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path13, paint13stroke);

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.001912046, size.height * 0.002788245);
    path14.lineTo(size.width * 0.001912046, size.height * 0.9944318);

    Paint paint14stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint14stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path14, paint14stroke);

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.0009560803, size.height * 0.9958245);
    path15.lineTo(size.width * 0.9961759, size.height * 0.9944262);

    Paint paint15stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint15stroke.color = color.withOpacity(1.0);
    canvas.drawPath(path15, paint15stroke);

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
