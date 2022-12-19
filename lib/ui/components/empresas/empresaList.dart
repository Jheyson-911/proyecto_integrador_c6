import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaController.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas/empresaDetail.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas/empresaEdit.dart';

SafeArea EmpresaList(AsyncSnapshot<List<EmpresaModel>> snapshot, EmpresaController empresaController, {required Null Function() refreshMx}){
 return SafeArea(
  child: ListView.separated(
    itemBuilder: (context, index) {
      var empresa =  snapshot.data?[index];
      return Container(
        height: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(flex: 4 ,child: Text('${empresa?.nombre}')),
            Expanded(flex: 3,child: Text('${empresa?.ruc}')),
            // Expanded(flex: 3,child: Text('${empresa?.actividad}')),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  buildEditEmpresa(context, empresaController, empresa!,
                    editRefresh: (){
                      refreshMx();
                    }
                  ),
                  showDetailEmpresa(context, empresa),
                ],
              )
            ),
          ]
        ),
      );
    },
    separatorBuilder: (context, index) {
      return Divider(
        thickness: 0.5,
        height: 0.5,
      );
    },
    itemCount: snapshot.data?.length ?? 0,
  )
 );
}

Container buildEditEmpresa(BuildContext context ,EmpresaController empresaController, EmpresaModel empresa, {required Null Function() editRefresh}) {
  return Container(
    child: IconButton(
            icon: const Icon(Icons.edit),
            color: Color(0xFF0323D8),
            onPressed: () {
              // print(empresa.id);
              // empresaController.updatePutEmpresa(empresa);
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => EmpresaEdit(empresa))
              ).then((updateEmpresa) {
                if (updateEmpresa != null) {
                  editRefresh();
                  _showModalBottomSheet(context, "Empresa actualizada!");
                }
              });
            },
          ),
  );
}

IconButton showDetailEmpresa(BuildContext context,EmpresaModel empresa){
  return IconButton(
    onPressed: () {
      EmpresaDetail(context, empresa);
    },
    icon: Icon(Icons.format_list_bulleted)
  );
}

void _showModalBottomSheet(BuildContext context, String message){
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        height: 50,
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      );
    }
  );
}