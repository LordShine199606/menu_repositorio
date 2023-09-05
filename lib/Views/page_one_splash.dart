import 'package:flutter/material.dart';
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
  Future.delayed( const Duration(seconds: 4)).then((_) =>Navigator.of(context).pushNamed('/LoginPage'));
}
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
        body:   Stack(
          children: [
            Container(
              color:ConsUtils.colorsPrimary ,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              Image(image: const AssetImage('assets/img/logo.png'),
              width: context.sizedDevice.width/0.2,),
           
            ],
            ),
        
          ],

        ));
  }
}
