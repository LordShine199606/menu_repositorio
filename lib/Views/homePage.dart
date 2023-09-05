// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/list_service.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listService = [
    'Energia',
    'Água',
    'Internet',
    ' Televisão',
    'Gás',
    'Educação',
  ];

  int indexLisorderType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsUtils.colorsPrimary,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ConsUtils.imgLogo,
                        height: context.sizedDevice.height / 5,
                      ),
                      CircleAvatar(
                        child: Image.asset(
                          'assets/img/miguel_avatar.jpg',
                          fit: BoxFit.cover,
                        ),
                        radius: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              'Pague aqui os seus serviços',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: ConsUtils.threedColors,
              ),
            )),
            SizedBox(
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
                        decoration: InputDecoration(
                            hintText: "O quê que procuras ?",
                            hintStyle: GoogleFonts.roboto(
                              color: ConsUtils.secondColors.withOpacity(.4),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(bottom: 5)),
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
            SizedBox(
              height: 15,
            ),
            Container(
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
                  /* Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                        color: ConsUtils.secondColors.withOpacity(.8),
                        height: 50,
                        width: 70,
                        child: Center(
                            child: Text(listService[index],
                                style: GoogleFonts.roboto(
                                    color: ConsUtils.threedColors)))),
                  );*/
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //  Popular Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('POPULAR',
                  style: GoogleFonts.roboto(
                      color: ConsUtils.secondColors.withOpacity(.8))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 150,
                    width: 70,
                    color: ConsUtils.secondColors.withOpacity(.7),
                    child: Row(
                      children: [Container()],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    width: 70,
                    color: ConsUtils.secondColors,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    width: 70,
                    color: ConsUtils.secondColors,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
