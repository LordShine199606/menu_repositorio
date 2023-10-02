import 'package:flutter/material.dart';
import 'package:myfirstapp/models/list_service.dart';
import 'package:myfirstapp/utils/size_device.dart';
import 'package:myfirstapp/utils/utils_const.dart';

class TileFood extends StatelessWidget {
   final void Function()? onTap;
  final MenuListPopular menuListPopular;
  const TileFood({super.key, required this.menuListPopular, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            color: ConsUtils.colorExtratime,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // image
              Image.asset(
                menuListPopular.foto,
                height: 70,
              ),
              const SizedBox(height: 10,),
              // text name
              Text(menuListPopular.nome),
              SizedBox(
                height: 30,
                // Price And Rater
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // price
                    Text('KZ ${menuListPopular.price}'),
                    Row(
                      children: [
                        const Icon(Icons.star,color: Colors.yellow,),
                        Text(menuListPopular.star),
                      ],
                    )
                    
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                  height: context.sizedDevice.height / 20,
                  width: 140,
                  decoration: BoxDecoration(
                      color: ConsUtils.secondColors,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: GestureDetector(
                        
                        
                        
                          child: Text(menuListPopular.about))))
            ],
          ),
        ),
      ),
    );
  }
}
