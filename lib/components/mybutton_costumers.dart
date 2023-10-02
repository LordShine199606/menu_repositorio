
import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/utils_const.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;

  const MyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Center(
          child: GestureDetector(
            onTap:onTap,
        child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
                color: ConsUtils.secondColors,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(child: Text('Adicionar Pedido'))),
      )),
    );
  }
}
