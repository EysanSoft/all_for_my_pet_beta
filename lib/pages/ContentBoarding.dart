import 'package:flutter/material.dart';
// import 'package:ejemplo_splash/styles/colors.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image
  }) : super (key: key);

  final String text,text1,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
              image,
              width: 290,
              height: 290,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff4f1581),
            fontSize: 21
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff757575),
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}