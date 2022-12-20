class EmpresaModel {
  int? id;
  String? nombre;
  String? ruc;
  String? actividad;
  String? sector;
  String? direccion;
  String? convenio;
  String? createdAt;
  String? updatedAt;

  EmpresaModel(
      {this.id,
      this.nombre,
      this.ruc,
      this.actividad,
      this.sector,
      this.direccion,
      this.convenio,
      this.createdAt,
      this.updatedAt});

  EmpresaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    ruc = json['ruc'];
    actividad = json['actividad'];
    sector = json['sector'];
    direccion = json['direccion'];
    convenio = json['convenio'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['ruc'] = this.ruc;
    data['actividad'] = this.actividad;
    data['sector'] = this.sector;
    data['direccion'] = this.direccion;
    data['convenio'] = this.convenio;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }

  @override
  String toString() {
    return '$nombre';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is EmpresaModel && other.nombre == nombre;
  }

  // @override
  // int get hashCode => Object.hash(nombre);
}