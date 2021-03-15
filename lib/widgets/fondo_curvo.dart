import 'package:flutter/material.dart';

class FondoCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _FondoCurvoPainter(),
      ),
    );
  }
}

class _FondoCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = new Rect.fromCircle(
      center: Offset(0, 120.0),
      radius: 180,
    );

    final gradiente = new RadialGradient(colors: [
      Color.fromRGBO(19, 255, 255, 1),
      Color.fromRGBO(59, 163, 255, 1),
      Color.fromRGBO(156, 0, 255, 1),
    ], stops: [
      0.0,
      0.5,
      1
    ], radius: 1.5);

    final paint = Paint()..shader = gradiente.createShader(rect);

    paint.color = Color(0xff615AAB);

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = new Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.6);
    // path.lineTo(size.width * 0.4, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.5,
        size.width * 0.6, size.height * 0.5);

    path.quadraticBezierTo(
        size.width * 0.88, size.height * 0.5, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
