import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/Views/pages/list_confirm_paymen.dart';
import 'package:myfirstapp/components/mybutton_costumers.dart';

import 'package:myfirstapp/models/list_service.dart';
import 'package:myfirstapp/utils/utils_const.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  final MenuListPopular menuListPopular;

  const DetailsPage({super.key, required this.menuListPopular});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int quantyCount = 0;
  int result = 0;

  // addListprodutIncremente
  void incrementeQuanty() {
    setState(() {
      quantyCount++;
    });
  }

  // addListprodutDecremente
  void decrementeQuanty() {
    setState(() {
      quantyCount++;
    });
  }

  void addlist() {
    if (quantyCount > 0) {
      final confirmPayment = context.read<ConfirmPayment>();
      confirmPayment.addCard(widget.menuListPopular, quantyCount);

      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) =>
          AlertDialog(
          backgroundColor: ConsUtils.secondColors,
          content:  const Row(
            children: [
              Text('Pedido Adicionado com Sucesso', style: TextStyle(color: ConsUtils.threedColors, fontWeight: FontWeight.bold),),
              // Um Emoji Sorridente aqui
            ],
          ),
          actions: [
            IconButton(onPressed: () {
        
              Navigator.pop(context);

               Navigator.pop(context);
            }, icon:const Icon(Icons.done))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Detalhes'),
          ),
          backgroundColor: ConsUtils.secondColors,
        ),
        body: Column(
          children: [
            // Listviews
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  // Image
                  Image.asset(
                    widget.menuListPopular.foto,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // React
                  const SizedBox(
                    height: 15,
                  ),

                  // Name Food
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.menuListPopular.nome,
                          style: GoogleFonts.roboto(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(widget.menuListPopular.star,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  // description
                  Text(
                    'Descrição',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Um hambúrguer de carne é uma iguaria culinária popular em todo o mundo, feita a partir '
                    'de carne moída, geralmente bovina, que é moldada em forma de disco e cozida. A preparação de um'
                    ' hambúrguer de carne pode variar de simples a sofisticada, com diferentes ingredientes e técnicas '
                    'utilizadas para criar uma experiência gastronômica única. Aqui está uma descrição geral de um hambúrguer de carne:'
                    'Carne de qualidade: Um hambúrguer de carne começa com carne de qualidade. A carne moída geralmente é feita a partir '
                    'de cortes magros de carne bovina, como o acém ou o peito, que são moídos para obter uma textura fina e uniforme.'
                    ' A escolha da carne pode afetar o sabor e a textura do hambúrguer.'
                    'Moldagem: A carne moída é moldada em discos ou hambúrgueres com a forma desejada.'
                    ' Os hambúrgueres podem variar em tamanho, geralmente entre 100g e 200g, e podem ser moldados à mão ou usando um molde específico.'
                    'Cozimento: Os hambúrgueres são cozidos em uma chapa, grelha ou frigideira quente.'
                    'O método de cozimento pode variar de malpassado a bem passado, dependendo das preferências pessoais. '
                    'O tempo de cozimento afeta a suculência e a textura do hambúrguer.',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey[500], height: 2),
                  )
                ],
              ),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.menuListPopular.price,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         const  SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantyCount > 0) {
                                    quantyCount--;
                                  }
                                });
                              },
                              child: const Icon(Icons.remove)),
                          Text(
                            quantyCount.toString(),
                            style :const  TextStyle(fontSize: 15),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantyCount++;
                                });
                              },
                              child: const Icon(Icons.add)),
                        ],
                      ),
                    ],
                  ),
                ),
                MyButton(
                  onTap: addlist,
                )
              ],
            )
          ],
        ));
  }
}
