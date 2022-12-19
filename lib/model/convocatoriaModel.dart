class ConvocatoriaModel {
  int? id;
  String? descripcion;
  int? cupos;
  String? cargo;
  String? tiempo;
  String? lugar;
  String? fechaLimite;
  String? telefono;
  int? fkEmpresaId;

  ConvocatoriaModel(
      {this.id,
      this.descripcion,
      this.cupos,
      this.cargo,
      this.tiempo,
      this.lugar,
      this.fechaLimite,
      this.telefono,
      this.fkEmpresaId});

  ConvocatoriaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descripcion = json['descripcion'];
    cupos = json['cupos'];
    cargo = json['cargo'];
    tiempo = json['tiempo'];
    lugar = json['Lugar'];
    fechaLimite = json['fecha_limite'];
    telefono = json['telefono'];
    fkEmpresaId = json['fk_empresaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descripcion'] = this.descripcion;
    data['cupos'] = this.cupos;
    data['cargo'] = this.cargo;
    data['tiempo'] = this.tiempo;
    data['Lugar'] = this.lugar;
    data['fecha_limite'] = this.fechaLimite;
    data['telefono'] = this.telefono;
    data['fk_empresaId'] = this.fkEmpresaId;
    return data;
  }
}