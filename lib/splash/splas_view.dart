import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:ejemplo_splash/styles/colors.dart';
import 'dart:ui' as ui;

// Importaciones clase Vistas
import '../pages/on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
    _toOnbording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _SplashCanvas(image),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  _toOnbording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoarding(),
      ),
    );
  }

  _loadImage (String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);
    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? image;
  const _SplashCanvas(this.image);
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff76AB56);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();

    path.lineTo(0, size.height * 0.10);
   
    path.quadraticBezierTo(
      size.width * 0.15, size.height * 0.14, size.width * 0.30, size.height * 0.10
    );

    path.quadraticBezierTo(
      size.width * 0.45, size.height * 0.08, size.width * 0.60, size.height * 0.10
    );

    path.quadraticBezierTo(
      size.width * 0.80, size.height * 0.12, size.width, size.height * 0.10
    );
    
    path.lineTo(size.width, size.height * 0.10);
    path.lineTo(size.width, 0);

    final paint2 = Paint();
    paint2.color = Color(0xff76AB56);
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 5;
    final path2 = Path();

    path2.lineTo(0, size.height);

    path2.quadraticBezierTo(
      size.width * 0.40, size.height * 0.90, size.width * 0.60, size.height * 0.91
    );

    path2.quadraticBezierTo(
      size.width * 0.70, size.height * 0.93, size.width * 0.80, size.height * 0.96
    );

    path2.quadraticBezierTo(
      size.width * 0.90, size.height * 0.99, size.width, size.height
    );

    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);

    canvas.scale(0.30, 0.30);
    canvas.drawImage(image!, const Offset(125 * 2.0, 320 * 1.9), Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
