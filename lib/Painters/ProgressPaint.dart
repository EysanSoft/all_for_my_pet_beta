import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'dart:math';

class ProgressPaint extends CustomPainter {
  double porcentajeIter;

  ProgressPaint ({required this.porcentajeIter});
  
  @override
  void paint(Canvas canvas, Size size) {
    // Circulo base.
    final paint1 = Paint();
    paint1.strokeWidth = 8;
    paint1.color = ColorsSelect.txtBoMe;
    paint1.style = PaintingStyle.stroke;
    final w = size.width * 0.50;
    final h = size.height * 0.50;
    var offset = Offset(w, h);

    // Arco de carga.
    final paint2 = Paint();
    paint2.strokeWidth = 8;
    paint2.color = ColorsSelect.btnBackgroundBo2;
    paint2.style = PaintingStyle.stroke;
    double percentage = 3.1416 * 2 * (porcentajeIter/100);
    Rect R = Rect.fromCircle(center: Offset(w, h), radius: w);

    canvas.drawCircle(offset, min(w, h), paint1);
    canvas.drawArc(R, -pi / 2, percentage, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}