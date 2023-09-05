import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
// void initState() {
  // super.initState();
  // Future.delayed( const Duration(seconds: 10)).then((_) =>Navigator.of(context).pushNamed('/LoginPage'));
// }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:    Center(
     child: CircularPercentIndicator(
      animation: true, 
      animationDuration: 1000,
      percent: 1,
      lineWidth: 5,
      progressColor: Colors.amber,
      radius:30),
   )
 );
  }
}