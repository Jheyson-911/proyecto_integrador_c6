class HorasTotal {
  String horasTotal;
  HorasTotal({required this.horasTotal});
  static HorasTotal fromJson(String json) {
    return HorasTotal(horasTotal: json as String);
  }
}
