import 'package:ejemplo_splash/services/authservice.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _Registro();
}

class _Registro extends State<Registro> {
  var value = false;
  bool _oculto = true;
  var nombre;
  var correo;
  var contra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        backgroundColor: ColorsSelect.txtBoMe,
        leading: TextButton(
          onPressed: () {
            // Navigator.pushNamed(context, 'login');
            Navigator.pop(context);
          },
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: ColorsSelect.paginatorNext,
          ),
        ),

        title: Container(
          child: Row(
            children: [
              const Text('Regístrate'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:70)
              ),
              Image.asset(
                'assets/images/splash.png',
                height: 40,
              ),
            ],
          )
        ),
      ),
      
      // Cuerpo
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
                // Texto
                Container(
                  margin: const EdgeInsets.only(top: 30.0, left: 15.0),
                  child: Column(
                    children: const <Widget> [
                      Text(
                        'Crea una cuenta para empezar a usar la app',
                        style: TextStyle(
                          color: ColorsSelect.btnTextBo1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ],
                  )
                ),

                // Texto 1
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Nombre',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                        )
                      )
                    ],
                  )
                ),

                // Entrada 1
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Nombre completo'
                    ),
                    onChanged: (val) {
                      nombre = val;
                    },
                  ),
                ),

                // Texto 2
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Correo electrónico',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                        )
                      )
                    ],
                  )
                ),

                // Entrada 2
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Dirección de correo'
                    ),
                    onChanged: (val) {
                        correo = val;
                    },
                  ),
                ),
                
                // Entrada 3
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[   
                      const Text(
                        'Contraseña',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(              
                        obscureText: _oculto, //mod
                        decoration: InputDecoration(
                          helperText: "La contraseña debe contener caracteres, números y\nsimbolos con un mínimo de 6 caracteres.",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          suffixIcon: IconButton(
                            icon: _oculto
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                            onPressed: () {
                              setState (() {
                                _oculto = !_oculto;
                              });
                            },
                          ),
                          hintText: 'Contraseña'
                        ),
                        onChanged: (val) {
                          contra = val;
                        },
                      )
                    ]
                  )
                ),
                
                // Checkbox
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  child: Row(
                    children: <Widget>[
                      Checkbox (
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        value: value,
                        onChanged: (v) {
                          setState(() {
                            value = v!;
                          });
                        },
                      ),
                      
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Al regístrarme, acepto los ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                decoration: TextDecoration.none
                              )
                            ),

                            TextSpan(
                              text: 'términos y\n',
                              recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, ''),
                              style: const TextStyle(
                                color: Color(0xfffc1460),
                                fontSize: 10,
                                decoration: TextDecoration.none
                              )
                            ),
                            TextSpan(
                              text: 'condiciones',
                              recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, ''),
                              style: const TextStyle(
                                color: Color(0xfffc1460),
                                fontSize: 10,
                                decoration: TextDecoration.none
                              )
                            ),
                            const TextSpan(
                              text: ' y la',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                decoration: TextDecoration.none
                              )
                            ),
                            TextSpan(
                              text: ' política de privacidad',
                              recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, ''),
                              style: const TextStyle(
                                color: Color(0xfffc1460),
                                fontSize: 10,
                                decoration: TextDecoration.none
                              )
                            )
                          ]
                        )
                      ),
                    ],
                  )
                ),
    
                // Boton
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  width: 320,
                  height: 48,
                  child: ElevatedButton(
                    
                    onPressed: (){
                      AuthService().addUser(nombre, correo, contra).then((val) {
                        print("Hecho");
                        Navigator.pushNamed(context, 'inicio');
                      });
                    },
                    
                    child: Column(
                      children: const[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7)
                        ),
                        Text(
                          'Crear Cuenta',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300,48),
                      primary: Color(ColorsSelect.btnBackgroundBo2.value),
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                    ),
                  ),
                ),

                // Texto Final
                Container(
                  margin: const EdgeInsets.only(top: 10),
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
                          Navigator.pushNamed(context, 'login'); // Modificar
                        },
                        child: const Text(
                          'Iniciar sesión',
                          style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460)),
                        )
                      ),
                    ],
                  ),
                )
              ],
          ),
        ),
      )
    );
  }
}