// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';

class ResgisterPage extends StatefulWidget {
  const ResgisterPage({super.key});

  @override
  State<ResgisterPage> createState() => _ResgisterPageState();
}

class _ResgisterPageState extends State<ResgisterPage> {
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
                  focusedBorder:const  OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.secondColors)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 32, 81),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white)),
                  hintText: 'Nome',
                  hintStyle: GoogleFonts.roboto(color: Colors.white),
                  suffixStyle:
                      (const TextStyle(color: Colors.white, fontSize: 10)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.secondColors)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 32, 81),
                  prefixIconColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Sobrenome',
                  hintStyle: GoogleFonts.roboto(color: Colors.white),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.secondColors)),
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
            height: 25,
          ),
          SizedBox(
            height: 45,
            width: context.sizedDevice.width / 1.5,
            child: TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ConsUtils.secondColors)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 32, 81),
                  prefixIconColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Confirmar senha',
                  hintStyle: GoogleFonts.roboto(color: Colors.white),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 25,
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ja tens uma conta ?', style: GoogleFonts.roboto(
     color: Colors.white, fontWeight: FontWeight.bold),),
                Text('  Entrar!', style: GoogleFonts.roboto(
     color:ConsUtils.secondColors, fontWeight: FontWeight.bold),),
  
            ],
          ),
           const SizedBox(
   height: 10,
 ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              color: ConsUtils.secondColors,
              height: 50,
              width: context.sizedDevice.width / 1.5,
              child: Center(
                  child: Text(
                "REGISTER",
                style: GoogleFonts.roboto(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'entra com ',
            style: GoogleFonts.roboto(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  color: ConsUtils.secondColors,
                  height: 35,
                  width: context.sizedDevice.width / 5,
                  child: Center(
                      child: Text(
                    'FACEBOOK',
                    style: GoogleFonts.roboto(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
              Container(
                  color: ConsUtils.secondColors,
                  height: 35,
                  width: context.sizedDevice.width / 5,
                  child: Center(
                      child: Text(
                    'GOOGLE',
                    style: GoogleFonts.roboto(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
            ],
          )
        ]));
  }
}
