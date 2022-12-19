
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaService.dart';

class EmpresaController {
  final EmpresaService _empresaService;
  EmpresaController(this._empresaService);

  Future<List<EmpresaModel>> fetchEmpresaList() async {
    return _empresaService.getEmpresaList();
  }

  Future<String> updatePutEmpresa(EmpresaModel empresaModel) async {
    return _empresaService.putEmpresa(empresaModel);
  }

  Future<String> createPostEmpresa(EmpresaModel empresaModel) async {
    return _empresaService.postEmpresa(empresaModel);
  }
  
  Future<EmpresaModel> fetchEmpresa(EmpresaModel empresaModel) async {
    return _empresaService.getEmpresa(empresaModel);
  }
}