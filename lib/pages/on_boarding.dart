import 'package:flutter/material.dart';
import 'package:ejemplo_splash/pages/ContentBoarding.dart';
import 'package:ejemplo_splash/styles/colors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController con = PageController();

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIAMIENTO",
      "text1": "brindamos todos los servicios para ofrecer",
      "image": "assets/images/B1.png"
    },
    {
      "text": "ADOPCION",
      "text1": "brindamos todos los servicios para ofrecer",
      "image": "assets/images/B2.png"
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "brindamos todos los servicios para ofrecer",
      "image": "assets/images/B3.png"
    },
    {
      "text": "VETERINARIA",
      "text1": "brindamos todos los servicios para ofrecer",
      "image": "assets/images/B4.png"
    },
    {
      "text": "TIENDA",
      "text1": "brindamos todos los servicios para ofrecer",
      "image": "assets/images/B5.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffffffff),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: con,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) {
                      return ContentBoarding(
                          text: onBoardingDatas[index]["text"]!,
                          text1: onBoardingDatas[index]["text1"]!,
                          image: onBoardingDatas[index]["image"]!);
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onBoardingDatas.length,
                            (index) => newMethod(index: index),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 100)),
                        SizedBox(
                          width: 300,
                          height: 48,
                          child: _button(indexAll: onBoardingDatas.length - 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
      onPressed: () {
        pages == indexAll
        ? Navigator.pushNamed(context, 'progress')
        : con.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
      },
      child: Text(
        pages == indexAll
        ? 'Continuar'
        : 'Siguiente',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: pages == indexAll
                ? ColorsSelect.btnBackgroundBo1
                : ColorsSelect.txtBoSubHe),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.blue,
        side:  BorderSide(color:pages == indexAll ? Colors.transparent: ColorsSelect.txtBoSubHe, width: pages == indexAll ? 0 : 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        primary: pages == indexAll
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.btnBackgroundBo1,
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
          color: pages == index
              ? ColorsSelect.paginatorNext
              : ColorsSelect.txtBoMe,
          borderRadius: BorderRadius.circular(3)),
      height: 4,
      width: pages == index ? 20 : 12,
    );
  }
}
