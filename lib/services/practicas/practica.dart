class Practica {
  int id;
  String fInicio;
  String fFin;
  String horas;
  String estado;
  int fkEstudianteId;
  int fkEmpresaId;
  Practica(
      {required this.id,
      required this.fInicio,
      required this.fFin,
      required this.horas,
      required this.estado,
      required this.fkEstudianteId,
      required this.fkEmpresaId});

  static Practica fromJson(Map<String, dynamic> json) {
    return Practica(
        id: json["id"] as int,
        fInicio: json["f_inicio"] as String,
        fFin: json["f_fin"] as String,
        horas: json["horas"] as String,
        estado: json["estado"] as String,
        fkEstudianteId: json["fk_estudianteId"] as int,
        fkEmpresaId: json["fk_empresaId"] as int);
  }
}
