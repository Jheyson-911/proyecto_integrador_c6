import 'package:proyecto_integrador_c6/services/dashboard/dashboard.dart';

class HorasTotales {
  HorasTotales();
  static List<HorasTotal> fromJsonOne(String jsonList) {
    List<HorasTotal> listaHoras = [];
    if (jsonList != null) {
      final hora = HorasTotal.fromJson(jsonList);
      listaHoras.add(hora);
    }
    return listaHoras;
  }
}

class EnProcesos {
  EnProcesos();
  static List<EnProceso> fromJsonList(List<dynamic> jsonList) {
    List<EnProceso> listaProcesos = [];
    if (jsonList != null) {
      for (var proceso in jsonList) {
        final data = EnProceso.fromJson(proceso);
        listaProcesos.add(data);
      }
    }
    return listaProcesos;
  }
}
