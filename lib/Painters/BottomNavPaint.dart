import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'dart:math';

class BottomNavPainter extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff76AB56);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();

    path.lineTo(0, size.height * 0.15);

    path.quadraticBezierTo(
      size.width * 0.10, size.height * 0.01, size.width * 0.20, size.height * 0.10
    );

    path.quadraticBezierTo(
      size.width * 0.50, size.height * 0.40, size.width * 0.70, size.height * 0.15
    );

    path.quadraticBezierTo(
      size.width * 0.80, size.height * 0.01, size.width, size.height * 0.15
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}