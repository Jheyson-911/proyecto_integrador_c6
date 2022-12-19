class HorasTotal {
  String horasTotal;
  HorasTotal({required this.horasTotal});
  static HorasTotal fromJson(String json) {
    return HorasTotal(horasTotal: json as String);
  }
}

class EnProceso {
  String total;
  String proceso;
  EnProceso({required this.proceso, required this.total});
  static EnProceso fromJson(Map<String, dynamic> json) {
    return EnProceso(
        proceso: json["proceso"] as String, total: json["total"] as String);
  }
}

class Finalizado {
  String total;
  String finalizado;
  Finalizado({required this.finalizado, required this.total});
  static Finalizado fromJson(Map<String, dynamic> json) {
    return Finalizado(
        finalizado: json["finalizado"] as String,
        total: json["total"] as String);
  }
}

class NoInicio {
  String total;
  String inicio;
  NoInicio({required this.inicio, required this.total});
  static NoInicio fromJson(Map<String, dynamic> json) {
    return NoInicio(
        inicio: json["inicio"] as String, total: json["total"] as String);
  }
}
