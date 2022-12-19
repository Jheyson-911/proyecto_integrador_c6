
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/ConvocatoriaService.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaService.dart';

class ConvocatoriaController {
  final ConvocatoriaService _convocatoriaService;
  ConvocatoriaController(this._convocatoriaService);

  Future<List<ConvocatoriaModel>> fetchConvocatoriaList() async {
    return _convocatoriaService.getConvocatoriaList();
  }

  Future<String> updatePutEmpresa(ConvocatoriaModel convocatoriaModel) async {
    return _convocatoriaService.putConvocatoria(convocatoriaModel);
  }

  Future<String> createPostEmpresa(ConvocatoriaModel convocatoriaModel) async {
    return _convocatoriaService.postConvocatoria(convocatoriaModel);
  }
}