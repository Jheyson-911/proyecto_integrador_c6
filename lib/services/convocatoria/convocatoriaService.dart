import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ConvocatoriaService {
  Future<List<ConvocatoriaModel>> getConvocatoriaList();

  Future<String> patchConvocatoria(ConvocatoriaModel convocatoriaModel);
  Future<String> putConvocatoria(ConvocatoriaModel convocatoriaModel);
  Future<String> deleteConvocatoria(ConvocatoriaModel convocatoriaModel);
  Future<String> postConvocatoria(ConvocatoriaModel convocatoriaModel);

}

class ConvocatoriaServiceMx implements ConvocatoriaService {
  final String API_URL = dotenv.get('API_HOST');


  @override
  Future<List<ConvocatoriaModel>> getConvocatoriaList() async {
    List<ConvocatoriaModel> convocatoriaList = [];
    var url = Uri.parse('$API_URL/apiv1/convocatorias/all');
    var response = await http.get(url);
    var body = jsonDecode(response.body)['data'];

    for (var i = 0; i < body.length; i++) {
      convocatoriaList.add(ConvocatoriaModel.fromJson(body[i]));
    }
    return convocatoriaList;
  }

  @override
  Future<String> putConvocatoria(ConvocatoriaModel convocatoriaModel) async {
    String resData = '';
    var url = Uri.parse('$API_URL/apiv1/empresa/${convocatoriaModel.id}');
    var data = {
      "descripcion": convocatoriaModel.descripcion,
      "cupos": convocatoriaModel.cupos,
      "cargo": convocatoriaModel.cargo,
      "tiempo": convocatoriaModel.tiempo,
      "lugar": convocatoriaModel.lugar,
      "fechaLimite": convocatoriaModel.fechaLimite,
      "telefono": convocatoriaModel.telefono,
      "fkEmpresaId": convocatoriaModel.fkEmpresaId
    };
    // print(jsonEncode(data));

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
  Future<String> deleteConvocatoria(ConvocatoriaModel convocatoriaModel) async {
    // TODO: implement deleteEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<String> patchConvocatoria(ConvocatoriaModel convocatoriaModel) {
    // TODO: implement patchEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<String> postConvocatoria(ConvocatoriaModel convocatoriaModel) async {
    var url = Uri.parse('$API_URL/apiv1/convocatoria/create');
    var result = '';
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(convocatoriaModel.toJson())
    );
    return 'true';
  }
}