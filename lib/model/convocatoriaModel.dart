class ConvocatoriaModel {
  int? id;
  String? descripcion;
  String? cupos;
  String? cargo;
  String? tiempo;
  String? lugar;
  String? fechaLimite;
  String? telefono;
  String? createdAt;
  String? updatedAt;
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
      this.createdAt,
      this.updatedAt,
      this.fkEmpresaId});

  ConvocatoriaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descripcion = json['descripcion'];
    cupos = json['cupos'];
    cargo = json['cargo'];
    tiempo = json['tiempo'];
    lugar = json['lugar'];
    fechaLimite = json['fecha_limite'];
    telefono = json['telefono'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    fkEmpresaId = json['fk_empresaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descripcion'] = this.descripcion;
    data['cupos'] = this.cupos;
    data['cargo'] = this.cargo;
    data['tiempo'] = this.tiempo;
    data['lugar'] = this.lugar;
    data['fecha_limite'] = this.fechaLimite;
    data['telefono'] = this.telefono;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['fk_empresaId'] = this.fkEmpresaId;
    return data;
  }
}
