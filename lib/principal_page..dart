
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Views/page_init.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,   
       home: HomePage()
    );
  }
}
