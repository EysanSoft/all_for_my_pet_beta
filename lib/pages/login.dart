// import 'package:ejemplo_splash/services/authservice.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool _oculto = true;
  var correo;
  var contra;
  var token;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

        title: Container(
          child: Row(
            children: [
              const Text('Iniciar sesión'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:56)
              ),
              Image.asset(
                'assets/images/splash.png',
                height: 40,
              ),
            ],
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 30.0, left: 5),
                child: Text(
                  'Inicia sesión con tu cuenta para continuar',
                  style: TextStyle(
                  color: ColorsSelect.btnTextBo1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                  )
                ),
              ),

              const SizedBox(
                height: 40.0,
              ),
              
              Container(
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Email Address'
                      ),
                      onChanged: (val) {
                        correo = val;
                      },
                    ),
                  ],
                )
              ),

              const SizedBox(
                height: 25.0,
              ),

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
                      obscureText: _oculto,
                      decoration: InputDecoration(
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
                        hintText: 'Password'
                      ),
                      onChanged: (val) {
                        contra = val;
                      },
                    )
                  ]
                )
              ),

              const SizedBox(
                height: 5.0,
              ),

              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'password');
                  },
                  child: const Text(
                    '¿Has olvidado tu contraseña?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorsSelect.paginatorNext),
                  )
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 175.0),
                child: Container(
                  child: ElevatedButton(
                    child: const Text(
                      "Ingresar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
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
                      /*
                      AuthService().login(correo, contra).then((val) {
                        if (val.data['success']) { 
                          token = val.data['token'];
                          Navigator.pushNamed(context, 'progress2');
                        } 
                      });
                      */
                     Navigator.pushNamed(context, 'progress2');
                    },
                  )
                ),
              ),
              
              const SizedBox(
                height: 8.0,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿Todavía no tienes una cuenta?',
                        style: TextStyle(
                          color: ColorsSelect.txtBoSubHe,
                          fontSize: 14,
                        ),
                      ),
                      
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'registro');
                        },
                        child: const Text(
                          'Regístrate',
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
        ),
    );
  }
}