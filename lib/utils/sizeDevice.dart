
// Pegar sempre o tamanho do dispositivo!

// ignore_for_file: file_names, camel_case_extensions

import 'package:flutter/cupertino.dart';

extension flutter  on BuildContext {
  Size get sizedDevice => MediaQuery.of(this).size;
}
