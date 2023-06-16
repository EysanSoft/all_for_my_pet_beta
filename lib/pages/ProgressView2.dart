import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:ejemplo_splash/styles/colors.dart';
import 'package:ejemplo_splash/Painters/ProgressPaint.dart';

class ProgressView2 extends StatefulWidget {
  const ProgressView2({Key? key}) : super(key: key);

  @override
  State<ProgressView2> createState() => _ProgressView2();
}

class _ProgressView2 extends State<ProgressView2> {
  double por = 0;
  @override
  void initState() {
    super.initState();
    cargaAni();
    redic();
  }
  @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Container(
           color: Colors.transparent,
           width: 100,
           height: 100,
           child: CustomPaint(
             painter: ProgressPaint(porcentajeIter: por)
           ),
          ),
        )
     );
   }

   cargaAni(){
     Timer.periodic(const Duration(milliseconds: 150), (timer) {
       setState(() {
         por += 10;
         if (por == 100){
           por = 0;
         }
       });
     });
   }

   void redic() async {
     await Future.delayed(const Duration(milliseconds: 750), (() {
       
     }));
     Navigator.pushNamed(context, 'home');
   }
}