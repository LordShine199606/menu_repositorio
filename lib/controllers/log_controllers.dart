
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginControllers {
  // progresso circular por isso criamos o inloader
  ValueNotifier<bool> inLoader = ValueNotifier(false);
  String? _username;
  // esse metodo é para o uso do onChange
  setUsername(String value) => _username = value;
  String? _password;
  // esse metodo é para o uso do onChange
  //  quando o usuario começa a digitar ele atribui o valor
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    return _username == 'admn' && _password == '123';
  }
}
