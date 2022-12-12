import 'dart:convert';

import 'package:proyecto_integrador_c6/services/solicitudes/solicitud.dart';
import 'package:proyecto_integrador_c6/services/solicitudes/solicitudes.dart';
import 'package:http/http.dart' as http;

class SolicitudDBService {
  static final String API_URL = "http://10.80.100.98:3000";

  static Future<List<Solicitud>> getSolicitudes() async {
    var url = API_URL + "/apiv1/solicitud/all";
    final respuesta = await http.get(Uri.parse(url));

    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      print(respuestaJSON["data"]);
      final listaPeliculas = Solicitudes.fromJsonList(respuestaJSON["data"]);
      return listaPeliculas;
    }
    return <Solicitud>[];
  }
}
