import 'package:flutter/material.dart';
import 'package:myfirstapp/Views/homePage.dart';
import 'package:myfirstapp/Views/page_one_splash.dart';
import 'package:myfirstapp/Views/register_page.dart';

import 'Views/login_page.dart';

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
      },
    );
  }
}
