import 'package:flutter/material.dart';
import 'package:myfirstapp/models/list_service.dart';

class ConfirmPayment extends ChangeNotifier {
  final List<MenuListPopular> listservictype = [
    MenuListPopular(
        nome: 'Hambuerguer Primier',
        price: '7.000',
        about: 'Adiconar Pedido',
        star: '5.4',
        foto: 'assets/img/Hamburguer.png'),
    MenuListPopular(
        nome: 'Sopa de Legumes',
        price: '7.000',
        about: 'Adiconar Pedido',
        star: '3.4',
        foto: 'assets/img/Hamburguer.png'),
    MenuListPopular(
        nome: 'Sopa de Legumes',
        price: '7.000',
        about: 'Adiconar Pedido',
        star: '',
        foto: 'assets/img/Hamburguer.png'),
    MenuListPopular(
        nome: 'Sopa de Legumes',
        price: '7.000',
        about: 'Adiconar Pedido',
        star: '4.5',
        foto: 'assets/img/Hamburguer.png'),
         MenuListPopular(
     nome: 'Sopa de Legumes',
     price: '7.000',
     about: 'Adiconar Pedido',
     star: '',
     foto: 'assets/img/Hamburguer.png'),
 MenuListPopular(
     nome: 'Sopa de Legumes',
     price: '7.000',
     about: 'Adiconar Pedido',
     star: '4.5',
     foto: 'assets/img/Hamburguer.png'),

  ];

//  Method Geand Setter
  final List<MenuListPopular> _card = [];

  List<MenuListPopular> get _listservictype => listservictype;
  List<MenuListPopular> get card => _card;

  // add item List

  void addCard(MenuListPopular itemList, int quantyCount) {
    for (int i = 0; i < quantyCount; i++) {
      _card.add(itemList);
    }
    notifyListeners();
  }

  void remCard(MenuListPopular menuListPopular) {
    _card.remove(menuListPopular);
    notifyListeners();
  }
}
