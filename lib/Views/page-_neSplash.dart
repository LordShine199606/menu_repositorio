// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/size_device.dart';

import 'package:myfirstapp/utils/utils_const.dart';

class SplahPage1 extends StatefulWidget {
  const SplahPage1({super.key});

  @override
  State<SplahPage1> createState() => _SplahPage1State();
}

class _SplahPage1State extends State<SplahPage1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4))
        .then((_) => Navigator.of(context).pushNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: ConsUtils.secondColors,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Center(
       child: Text(
        
     'Menu Virtual',
     style: GoogleFonts.roboto(
       fontSize: 15,
       color: ConsUtils.threedColors,
     ),
   )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image:
                    const AssetImage('assets/img/ham1-removebg-preview.png'),
                width: context.sizedDevice.width / 0.2,
              ),
            ),
            
          ],
        ),
      ],
    ));
  }
}
