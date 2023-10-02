// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myfirstapp/Views/pages/detaisl_page.dart';
import 'package:myfirstapp/Views/pages/list_confirm_paymen.dart';
import 'package:myfirstapp/Views/pages/tile_food.dart';
import 'package:myfirstapp/Views/requesit_list.dart';

import 'package:myfirstapp/utils/list_service.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  List<String> listService = [
    'All',
    'Pizza',
    'Hamburguers',
    ' Sopa',
    'Tabuas ',
    'Doces & Salgados',
    'Bebidas',
  ];
  void detailsListPAge(int index) {
    final confirmPayment = context.read<ConfirmPayment>();
    final listservictype = confirmPayment.listservictype;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DetailsPage(menuListPopular: listservictype[index]),
        ));
  }

  int indexLisorderType = 0;
  int indexTypeMap = 0;

  @override
  Widget build(BuildContext context) {
    final confirmPayment = context.read<ConfirmPayment>();
    final listservictype = confirmPayment.listservictype;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: PageView(
        controller: _pageController,
        children: [
          Column(
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
                  'Faz o seu pedido',
                  style: GoogleFonts.poppins(
                    color: ConsUtils.secondColors.withOpacity(.6),
                    fontSize: 25,
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: context.sizedDevice.width,
                  height: context.sizedDevice.height / 20,
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.1),
                              borderRadius: BorderRadius.circular(25)),
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 20),
                          child: TextField(
                            style: GoogleFonts.roboto(
                                color: ConsUtils.threedColors),
                            decoration: InputDecoration(
                                hintText: "O quê que procuras ?",
                                hintStyle: GoogleFonts.roboto(
                                  color: ConsUtils.secondColors.withOpacity(.4),
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.only(bottom: 5)),
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
                  height: context.sizedDevice.height / 20,
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
                    child: GridView.builder(
                        itemCount: listservictype.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return TileFood(
                            menuListPopular: listservictype[index],
                            onTap: () {
                              detailsListPAge(index);
                            },
                          );
                        })),
                //
              ]),

          const ListPedidos()

          // ListPedidos(listservictype:MenuListPopular(foto: 'Miguel', nome: 'Miguel', price: '10', about: '', star:'') )
        ],
      ),
      bottomNavigationBar: GNav(
          onTabChange: (index) {
            setState(() {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            });
          },
          padding: const EdgeInsets.all(10),
          tabBackgroundColor: ConsUtils.secondColors,
          color: Colors.deepPurple,
          activeColor: Colors.black,
          hoverColor:ConsUtils.secondColors.withOpacity(.5),
          duration: const Duration(milliseconds: 300),
          gap: 10,
          rippleColor: ConsUtils.secondColors,
          tabs: const [
            GButton(text: 'Home', icon: Icons.home),
            GButton(text: 'Lista de Pedidos', icon: Icons.search_outlined),
          ]),
    );
  }
}