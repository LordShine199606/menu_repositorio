// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Views/pages/list_confirm_paymen.dart';
import 'package:myfirstapp/models/list_service.dart';

import 'package:myfirstapp/utils/utils_const.dart';
import 'package:provider/provider.dart';

class ListPedidos extends StatelessWidget {
  final int totalCompras = 0;
  const ListPedidos({
    super.key,
  });

  void removedList(MenuListPopular menuListPopular, BuildContext context) {
    final confirmPayment = context.read<ConfirmPayment>();

    confirmPayment.remCard(menuListPopular);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfirmPayment>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: ConsUtils.secondColors,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ConsUtils.secondColors,
          title: const Center(child: Text('Lista de Pedidos')),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: value.card.length,
              itemBuilder: (context, index) {
                final MenuListPopular menuListPopular = value.card[index];

                final String menuListpopularNome = menuListPopular.nome;
                final String menuListpopularPrice = menuListPopular.price;

                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(122, 252, 230, 201)
                          .withOpacity(.12)),
                  child: ListTile(
                      title: Text(
                        menuListpopularNome,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(menuListpopularPrice,
                          style: TextStyle(color: Colors.grey.shade800)),
                      trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () =>
                              removedList(menuListPopular, context))),
                );
              },
            ),
          ),
          Container(
            decoration:const  BoxDecoration(
                borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tota: $totalCompras'),
                      Container(
                        height: 30,
                        width: 150,
                        decoration:const  BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: ConsUtils.threedColors),
                        child: const Center(child: Text('CONFIRMA PEDIDO')),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
