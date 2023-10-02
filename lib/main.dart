import 'package:flutter/material.dart';
import 'package:myfirstapp/Views/pages/list_confirm_paymen.dart';
import 'package:myfirstapp/principal_page..dart';
import 'package:provider/provider.dart';

main() {
  runApp(ChangeNotifierProvider(create: (context) =>ConfirmPayment() ,
  child:const MyApp() ,
  ));
}
