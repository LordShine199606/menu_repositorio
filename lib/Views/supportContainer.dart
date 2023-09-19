import 'package:flutter/cupertino.dart';
import 'package:myfirstapp/models/listService.dart';

class SupportContainer extends StatelessWidget {


   List<MenuListPopular> listservictype = [
   MenuListPopular(
       foto: 'Aqui vai a foto',
       nome: 'Hamburguer duplo',
       price:'10.500',
       about: 'Melhor Hamburgueer',
       star: '')
 ];

  SupportContainer({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    children:[
        Container(
   
   
   
      child: Text('')),
  ],
    
    );
}
}