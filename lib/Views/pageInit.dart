// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/models/listService.dart';
import 'package:myfirstapp/utils/listService.dart';
import 'package:myfirstapp/utils/sizeDevice.dart';
import 'package:myfirstapp/utils/utilsConst.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ExpansionTileController controllerExpasion = ExpansionTileController();
  List<MenuListPopular> listservictype = [
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price:'10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price: '10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price:'10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
    MenuListPopular(
        foto: 'Aqui vai a foto',
        nome: 'Hamburguer duplo',
        price:'10.500',
        about: 'Melhor Hamburgueer',
        star: ''),
  ];

  List<String> listService = [
    'Pizza',
    'Hamburguers',
    ' Sopa',
    'Tabuas ',
    'Bebidas',
  ];

  int indexLisorderType = 0;
  int indexTypeMap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsUtils.threedColors,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: context.sizedDevice.height / 10,
                child: Image.asset(
                  ConsUtils.imgLogo,
                  height: context.sizedDevice.height / 1,
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              'assets/img/miguel_avatar.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'Menu',
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: ConsUtils.colorExtra,
              ),
            )),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: context.sizedDevice.width,
              height: context.sizedDevice.height / 20,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(25)),
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: TextField(
                        style:
                            GoogleFonts.roboto(color: ConsUtils.threedColors),
                        decoration: InputDecoration(
                            hintText: "O quê que procuras ?",
                            hintStyle: GoogleFonts.roboto(
                              color: ConsUtils.secondColors.withOpacity(.4),
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(bottom: 5)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: ConsUtils.secondColors.withOpacity(.7),
                        shape: BoxShape.circle),
                    child: const Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            // Lista de servicos apresentados
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              // Lista dos serviços na horizontal
              height: context.sizedDevice.height / 10,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10, right: 10),
                scrollDirection: Axis.horizontal,
                itemCount: listService.length,
                itemBuilder: (context, index) {
                  return ListName(
                    selectService: indexLisorderType == index,
                    listService: listService[index],
                    onTap: () {
                      setState(() {
                        indexLisorderType = index;
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //  Popular Text
            // Os serviços mais vistos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('POPULAR',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: ConsUtils.secondColors.withOpacity(.8))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: listservictype.length,
              itemBuilder: (context, index) {
                final serviceAll = listservictype[index];
                return Card(
                  elevation: 0,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('assets/img/Hamburguer.png'),
                    ),
                    title: Row(
                      children: [
                        Column(
                          children: [
                            Text(serviceAll.nome),
                            Row(
                              children: [
                                const Text('Preco'),
                                Text(serviceAll.price),
                              ],
                            ),
                            Text(serviceAll.about)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ))
          ]),
    );
  }
}
