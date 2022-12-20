import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:proyecto_integrador_c6/services/practicas/practica.dart';
import 'package:proyecto_integrador_c6/services/practicas/practicas.dart';

class PracticaDBService {
  static final String API_URL = dotenv.get('API_HOST');
  static Future<List<Practica>> getPracticas(String id) async {
    var url = API_URL + "/apiv1/reportes/" + id + "/practicas";
    final respuesta = await http.get(Uri.parse(url));
    if (respuesta.statusCode == 200) {
      final respuestaJson = jsonDecode(respuesta.body);
      //print(respuestaJson["data"]);
      final listaPracticas = Practicas.fromJsonList(respuestaJson["data"]);
      return listaPracticas;
    }
    return <Practica>[];
  }
}
