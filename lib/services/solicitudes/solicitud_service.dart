import 'dart:convert';
import 'dart:io';

import 'package:proyecto_integrador_c6/services/solicitudes/solicitud.dart';
import 'package:proyecto_integrador_c6/services/solicitudes/solicitudes.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';

class SolicitudDBService {
  static final String API_URL = dotenv.get('API_HOST');

  static Future<List<Solicitud>> getSolicitudes() async {
    var url = API_URL + "/apiv1/solicitud/all";
    final respuesta = await http.get(Uri.parse(url));

    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      final listaPeliculas = Solicitudes.fromJsonList(respuestaJSON["data"]);
      return listaPeliculas;
    }
    return <Solicitud>[];
  }

  static Future<int> createSolicitud(
      String id, Map<String, dynamic> data) async {
    var url = API_URL + "/apiv1/solicitud/" + id;
    final respuesta = await http.post(Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data));
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      // final listaPeliculas = Solicitudes.fromJsonList(respuestaJSON["data"]);
      return 1;
    }
    return 0;
  }

  static Future<int> updateSolicitud(
      String id, Map<String, dynamic> data) async {
    var url = API_URL + "/apiv1/solicitud/" + id;
    final respuesta = await http.put(Uri.parse(url),
        headers: {HttpHeaders.contentTypeHeader: "application/json"},
        body: jsonEncode(data));
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      return respuestaJSON["data"][0];
    }
    return 0;
  }

  static Future<int> deleteSolicitud(String id) async {
    var url = API_URL + "/apiv1/solicitud/" + id;
    final respuesta = await http.delete(
      Uri.parse(url),
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
    );
    if (respuesta.statusCode == 200) {
      final respuestaJSON = jsonDecode(respuesta.body);
      return respuestaJSON["data"];
    }
    return 0;
  }
}
