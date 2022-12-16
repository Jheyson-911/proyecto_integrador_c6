import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_integrador_c6/services/dashboard/dashboard.dart';
import 'package:proyecto_integrador_c6/services/dashboard/dashboards.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HoraTotalDBService {
  static final String API_URL = dotenv.get("API_HOST");

  static Future<String> getHoras(String id) async {
    var url = API_URL + "/apiv1/reportes/" + id + "/mishoras";
    final respuesta = await http.get(Uri.parse(url));
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      final listaHoras = HorasTotales.fromJsonOne(respuestaJSON["horasTotal"]);
      return respuestaJSON["horasTotal"];
    }
    return "false";
  }

  static Future<List<EnProceso>> getEstudiantesProceso() async {
    var url = API_URL + "/apiv1/reportes/proceso";
    print(url);
    final respuesta = await http.get(Uri.parse(url));
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      print(respuestaJSON["data"]);
      // print(respuestaJSON["data"]);
      final listaprocesos = EnProcesos.fromJsonList(respuestaJSON["data"]);
      return listaprocesos;
    }
    return <EnProceso>[];
  }
}
