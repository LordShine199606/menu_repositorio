// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';

class ListName extends StatelessWidget {
  final bool selectService;
  final String listService;
  final VoidCallback onTap;

  const ListName(
      {super.key,
      required this.selectService,
      required this.listService,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
// Aqui  vai as cores que seram mudades assim que tiver em um dos botões

        //  Está duração e para a passagem das listagens
        duration: const Duration(microseconds: 300),
        decoration: BoxDecoration(
            color:
                selectService ? ConsUtils.secondColors : ConsUtils.threedColors,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
            child: Text(listService,
                style:
                 GoogleFonts.roboto(
                    fontSize: context.sizedDevice.height / 60,
                    fontWeight: FontWeight.bold,
                    color: selectService
                        ? ConsUtils.threedColors
                        : ConsUtils.secondColors))),
      ),
    );
  }
}
