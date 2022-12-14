import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_integrador_c6/services/dashboard/dashboard.dart';
import 'package:proyecto_integrador_c6/services/dashboard/dashboards.dart';

class HoraTotalDBService {
  static final String API_URL = "http://192.168.1.7:3000";
  static Future<String> getHoras(String id) async {
    var url = API_URL + "/apiv1/reportes/" + id + "/mishoras";
    print(url);
    final respuesta = await http.get(Uri.parse(url));
    print(respuesta);
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      print(respuestaJSON["horasTotal"]);
      final listaHoras = HorasTotales.fromJsonOne(respuestaJSON["horasTotal"]);
      return respuestaJSON["horasTotal"];
    }
    return "false";
  }
}
