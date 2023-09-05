import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:myfirstapp/controllers/log_controllers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // LoginControllers _loginControllers = LoginControllers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConsUtils.colorsPrimary,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          // logo
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: ConsUtils.colorsPrimary,
                height: 200,
                width: 400,
                child: const Image(image: AssetImage('assets/img/logoPay.png')),
              )),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 32, 81),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'E-mail',
                  hintStyle: GoogleFonts.roboto(color: Colors.white),
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
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 32, 81),
                  prefixIconColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Senha',
                  hintStyle: GoogleFonts.roboto(color: Colors.white),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 10,
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
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: Text(
                    'Criar Conta?',
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
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
          )
        ]));
  }
}
