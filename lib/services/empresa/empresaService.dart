import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class EmpresaService {
  Future<List<EmpresaModel>> getEmpresaList();
  Future<EmpresaModel> getEmpresa(EmpresaModel empresaModel);
  Future<String> patchEmpresa(EmpresaModel empresaModel);
  Future<String> putEmpresa(EmpresaModel empresaModel);
  Future<String> deleteEmpresa(EmpresaModel empresaModel);
  Future<String> postEmpresa(EmpresaModel empresaModel);

}

class EmpresaServiceMx implements EmpresaService {
  final String API_URL = dotenv.get('API_HOST');


  @override
  Future<List<EmpresaModel>> getEmpresaList() async {
    List<EmpresaModel> empresaList = [];
    var url = Uri.parse('$API_URL/apiv1/empresa/all');
    var response = await http.get(url);
    var body = jsonDecode(response.body)['data'];

    for (var i = 0; i < body.length; i++) {
      empresaList.add(EmpresaModel.fromJson(body[i]));
    }
    return empresaList;
  }

  @override
  Future<String> putEmpresa(EmpresaModel empresaModel) async {
    String resData = '';
    var url = Uri.parse('$API_URL/apiv1/empresa/${empresaModel.id}');
    var data = {
      "nombre": empresaModel.nombre,
      "ruc": empresaModel.ruc,
      "actividad": empresaModel.actividad,
      "sector": empresaModel.sector,
      "direccion": empresaModel.direccion,
      "convenio": empresaModel.convenio,
    };
    print(jsonEncode(data));

    await http.put(
      url, 
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data)
      // headers: {'Authorization': 'your token'},
    ).then((response){
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['message'];
    });
    return resData;
  }
  
  @override
  Future<String> deleteEmpresa(EmpresaModel empresaModel) async {
    // TODO: implement deleteEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<String> patchEmpresa(EmpresaModel empresaModel) {
    // TODO: implement patchEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<String> postEmpresa(EmpresaModel empresaModel) async {
    var url = Uri.parse('$API_URL/apiv1/empresa/create');
    var result = '';
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(empresaModel.toJson())
    );
    return 'true';
  }
  
  @override
  Future<EmpresaModel> getEmpresa(EmpresaModel empresaModel) async {
    EmpresaModel empresa;
    var url = Uri.parse('$API_URL/apiv1/empresa/all');
    var response = await http.get(url);
    var body = jsonDecode(response.body)['data'];

    empresa = EmpresaModel.fromJson(body);

    return empresa;
  }
}