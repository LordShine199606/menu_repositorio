
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Views/pageInit.dart';
import 'package:myfirstapp/Views/pageOneSplash.dart';
import 'package:myfirstapp/Views/pages/detaisPagAll.dart';
import 'package:myfirstapp/Views/registerPage.dart';

import 'Views/loginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplahPage1',
      routes: {
        '/SplahPage1': (context) => const SplahPage1(),
        '/LoginPage': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/register': (context) => const ResgisterPage(),
        '/detailsPage': (context) => const DetailsPAge(),
      },
    );
  }
}
