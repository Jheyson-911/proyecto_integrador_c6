import 'package:proyecto_integrador_c6/services/solicitudes/solicitud.dart';

class Solicitudes {
  Solicitudes();
  static List<Solicitud> fromJsonList(List<dynamic> jsonList) {
    List<Solicitud> listaSolicitudes = [];
    if (jsonList != null) {
      for (var solicitud in jsonList) {
        final soli = Solicitud.fromJson(solicitud);
        listaSolicitudes.add(soli);
      }
    }
    return listaSolicitudes;
  }
}
