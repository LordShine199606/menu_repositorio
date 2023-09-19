// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BtnNav_bar extends StatelessWidget {
  const BtnNav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      
      bottomNavigationBar: GNav(
     color: Colors.deepPurple,
     activeColor: Colors.black,
     hoverColor: Colors.grey,
    duration: Duration(milliseconds: 300),
       gap: 5,
       rippleColor: Colors.red,
      
      tabs:
      [GButton(
        text: 'Home',
        icon: Icons.home),
      GButton(
        text: 'Search',
        icon: Icons.search_outlined),
      GButton(
        text: 'Likes',
        icon: Icons.favorite),
      GButton(
        text: 'Profile',
        icon: Icons.person)

      ] ),);
  }
}


