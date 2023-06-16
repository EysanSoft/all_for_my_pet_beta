import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ejemplo_splash/styles/colors.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 24, right: 24),
              child: Image.asset(
                'assets/images/splash.png',
                height: 120,
              )
            ),

            Container(  
              margin: const EdgeInsets.only(top: 40),
              width: 300,
              height: 48,
              child: ElevatedButton(
                onPressed: () {}, 
                child: Row(
                  children: const[
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:10) 
                    ),
                    FaIcon(
                      FontAwesomeIcons.google,
                      size: 21
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14)
                    ),
                    Text(
                      'Continuar con Google',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 48),
                  primary: const Color(0xff3169f5),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                ),
              ),
            ),

            Container(  
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              height: 48,
              child: ElevatedButton(
                onPressed: () {}, 
                  child: Row(
                    children: const[
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:10)
                      ),
                      FaIcon(
                        FontAwesomeIcons.facebookSquare
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10)
                      ),
                      Text(
                        'Continuar con Facebook',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                  ),

                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300,48),
                    primary: const Color(0xff324fa5),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro');
                  }, 
                  child: Row(
                    children: const[
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:10)
                      ),
                      Icon(
                        Icons.mail_rounded,
                        color: Color(0xff64686f)
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12)
                      ),
                      Text(
                        'Registrarse con e-mail',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff64686f)
                        )
                      )
                    ]
                  ),

                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xff64686f),
                    ),
                    minimumSize: const Size(300,48),
                    primary: const Color(0xffffffff),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 38),
                width: 300,
                height: 24,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Entrar como invitado",
                    style: TextStyle(
                      color: Color(0xfffc1460),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent.withOpacity(0),
                    shadowColor: Colors.redAccent.withOpacity(0),
                  )
                )
              ),

              Container(
                width: 300,
                height: 24,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Entrar como vendedor",
                    style: TextStyle(
                      color: Color(0xff76aa75),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent.withOpacity(0),
                    shadowColor: Colors.redAccent.withOpacity(0),
                  )
                )
              ),

              Container(
                margin: const EdgeInsets.only(top: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '¿Ya tienes una cuenta?',
                      style: TextStyle(
                        color: ColorsSelect.txtBoSubHe,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460)
                        ),
                      )
                    ),
                  ],
                ),
              )
            ],
          ), 
        ),
      );
  }
}
