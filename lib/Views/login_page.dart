// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/controllers/log_controllers.dart';

import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';
// import 'package:myfirstapp/controllers/log_controllers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,});
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginControllers _loginController = LoginControllers();

  // LoginControllers _loginControllers = LoginControllers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConsUtils.threedColors,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          // logo EasyPay
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: ConsUtils.threedColors,
                height: 200,
                width: 400,
                child: const Image(
                    image: AssetImage('assets/img/preto-remove.png')),
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              onChanged: _loginController.setUsername,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIconColor: Colors.black,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.colorsPrimary)),
                  hintText: 'E-mail',
                  hintStyle: GoogleFonts.roboto(color: Colors.black),
                  suffixStyle:
                      (const TextStyle(color: Colors.white, fontSize: 10)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              onChanged: _loginController.setPassword,
              obscureText: true,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIconColor: Colors.black,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.colorsPrimary)),
                  hintText: 'Senha',
                  hintStyle: GoogleFonts.roboto(color: Colors.black),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Esqueceu a palavra Passe?',
                    style: GoogleFonts.roboto(color: ConsUtils.secondColors),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: Text(
                    'Criar Conta?',
                    style: GoogleFonts.roboto(color: ConsUtils.secondColors),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ValueListenableBuilder(
            valueListenable: _loginController.inLoader,
            builder: (_, inLoader, __) => inLoader
                ? const CircularProgressIndicator()
                : GestureDetector(
                    onTap: () {
                      _loginController.auth().then((value) {
                        if (value) {
                          Navigator.of(context).pushNamed('/home');
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Center(
                                child: Text('Falha ao realizar o login')),
                            duration: Duration(seconds: 7),
                          ));
                        }
                      });
                    },
                    child: Container(
                      color: Colors.amber.shade800,
                      height: 50,
                      width: context.sizedDevice.width / 1.5,
                      child: Center(
                          child: Text(
                        "ENTRAR",
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
          )
        ]));
  }
}
