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
