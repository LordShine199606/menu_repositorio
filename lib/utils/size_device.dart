
// Pegar sempre o tamanho do dispositivo!

import 'package:flutter/cupertino.dart';

extension flutter  on BuildContext {
  Size get sizedDevice => MediaQuery.of(this).size;
}
