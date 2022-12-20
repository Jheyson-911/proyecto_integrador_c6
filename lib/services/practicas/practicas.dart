import 'dart:convert';

import 'practica.dart';


class Practicas {
  Practicas();
  static List<Practica> fromJsonList(List<dynamic> jsonList) {
    List<Practica> listadoPracticas = [];
    if (jsonList != null) {
      for (var practica in jsonList) {
        final practi = Practica.fromJson(practica);
        listadoPracticas.add(practi);
      }
    }
    return listadoPracticas;
  }
}
