class Solicitud {
  int id;
  String nombreEmpresa;
  String ruc;
  String actividad;
  String sector;
  String direccion;
  String representante;
  String cargo;
  String area;
  String descripcion;
  String estado;
  int fkEstudianteId;
  Solicitud({
    required this.id,
    required this.nombreEmpresa,
    required this.ruc,
    required this.actividad,
    required this.sector,
    required this.direccion,
    required this.representante,
    required this.cargo,
    required this.area,
    required this.descripcion,
    required this.estado,
    required this.fkEstudianteId,
  });

  static Solicitud fromJson(Map<String, dynamic> json) {
    return Solicitud(
        id: json["id"] as int,
        nombreEmpresa: json["nombre_empresa"] as String,
        ruc: json["ruc"] as String,
        actividad: json["actividad"] as String,
        sector: json["sector"] as String,
        direccion: json["direccion"] as String,
        representante: json["representante"] as String,
        cargo: json["cargo"] as String,
        area: json["area"] as String,
        descripcion: json["descripcion"] as String,
        estado: json["estado"] as String,
        fkEstudianteId: json["fk_estudianteId"] as int);
  }
}
