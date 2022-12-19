import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/convocatoriaController.dart';

SafeArea ConvocatoriaList(AsyncSnapshot<List<ConvocatoriaModel>> snapshot, ConvocatoriaController convocatoriaController, {required Null Function() refreshMx}){
 return SafeArea(
  child: ListView.separated(
    itemBuilder: (context, index) {
      var convocatoria =  snapshot.data?[index];
      return Container(
        height: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(flex: 4 ,child: Text('${convocatoria?.descripcion}')),
            Expanded(flex: 3,child: Text('${convocatoria?.cargo}')),
            // Expanded(flex: 3,child: Text('${empresa?.actividad}')),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  buildEditEmpresa(context, convocatoriaController, convocatoria!,
                    editRefresh: (){
                      refreshMx();
                    }
                  ),
                  showDetailEmpresa(context, convocatoria),
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

Container buildEditEmpresa(BuildContext context ,ConvocatoriaController convocatoriaController, ConvocatoriaModel convocatoria, {required Null Function() editRefresh}) {
  return Container(
    child: IconButton(
            icon: const Icon(Icons.edit),
            color: Color(0xFF0323D8),
            onPressed: () {
              // Navigator.push(
              //   context, 
              //   MaterialPageRoute(builder: (_) => EmpresaEdit(empresa))
              // ).then((updateEmpresa) {
              //   if (updateEmpresa != null) {
              //     editRefresh();
              //     _showModalBottomSheet(context, "Empresa actualizada!");
              //   }
              // });
            },
          ),
  );
}

IconButton showDetailEmpresa(BuildContext context,ConvocatoriaModel convocatoria){
  return IconButton(
    onPressed: () {
      // EmpresaDetail(context, convocatoria);
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