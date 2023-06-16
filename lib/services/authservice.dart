import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

class AuthService {
  Dio dio = new Dio();

  login(correo, contra) async {
    try {
      return await dio.post('https://api-rest-afmp.herokuapp.com/authenticate', data: {
        "email": correo,
        "password": contra
      },
      options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on DioError catch(e) {
      print("Usuario o contraseña incorrecta.");
    }
  }

  addUser(name, email, password) async {
    try {
      return await dio.post('https://api-rest-afmp.herokuapp.com/adduser', data: {
        "name": name,
        "email": email,
        "password": password
      },
      options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on NullThrownError catch(e) {
      print("Tas bien menso.");
    }
  }
}