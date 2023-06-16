import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  State<RecoverPassword> createState() => _RecoverPassword();
}

class _RecoverPassword extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: definirAppBar(),
      body: SingleChildScrollView(
        child: cuerpoPassword(),
      )
    );
  }

  AppBar definirAppBar(){
    return AppBar(
      title: Container(
        child: Row(
          children: [
            const Text('Recuperar contraseña'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:17.5)
            ),
            Image.asset('assets/images/splash.png',
              height: 40,
            ),
          ],
        )
      ),
            
      elevation: null,
      backgroundColor: ColorsSelect.txtBoMe,
      leading: TextButton(
        onPressed: () {
        Navigator.pop(context);
        },
        child: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: ColorsSelect.paginatorNext,
        ),
      ),
    );
  }

  Container cuerpoPassword(){
    return Container(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 22),
            child: Center(
              child: Text(
                'Ingresa tu email para restablecer tu contraseña',
                style: TextStyle(
                  color: ColorsSelect.btnTextBo1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          inputMail(),
          Padding(
            padding: const EdgeInsets.only(top: 320.0, bottom: 20),
            child: Container(
              child: ElevatedButton(
                child: const Text(
                  "Enviar Solicitud",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(328, 54),
                  primary: Color(ColorsSelect.btnBackgroundBo2.value),
                  onPrimary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                ),
                onPressed: () {
                  print("Siguiente");
                },
              )
            ),
          ),
        ],
      )
    );
  }

  Widget inputMail() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Correo electrónico',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
            helperText: "Ingrese su correo electrónico registrado y le\nenviaremos un correo electrónico que contiene un\nenlace para restablecer su contraseña.",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ), hintText: 'Dirección de correo'),
          ),
        ],
      )
    );
  }
}