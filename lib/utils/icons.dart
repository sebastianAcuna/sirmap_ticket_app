import 'package:flutter/material.dart';

Color colores({String color}) {
  switch (color) {
    case 'accent_light':
      return Color.fromRGBO(123, 228, 149, 1);
      break;
    default:
      return Colors.white;
  }
}
