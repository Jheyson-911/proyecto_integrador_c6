import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/convocatoriaController.dart';
import 'package:proyecto_integrador_c6/ui/components/convocatorias/convocatoriaDetail.dart';
import 'package:proyecto_integrador_c6/ui/components/convocatorias/convocatoriaEdit.dart';

SafeArea ConvocatoriaList(AsyncSnapshot<List<ConvocatoriaModel>> snapshot,
    ConvocatoriaController convocatoriaController,
    {required Null Function() refreshMx}) {
  return SafeArea(
      child: ListView.separated(
    itemBuilder: (context, index) {
      var convocatoria = snapshot.data?[index];
      return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(children: [
                Text("Descripcion:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Cupos:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Cargo:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Tiempo:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Lugar:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Fecha limite:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Telefono:",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ]),
              Column(
                children: [
                  Text(convocatoria!.descripcion.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.cupos.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.cargo.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.tiempo.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.lugar.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.fechaLimite.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  Text(convocatoria.telefono.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                ],
              )
            ],
          )
          // Expanded(flex: 4, child: Text('${convocatoria?.descripcion}')),
          // Expanded(flex: 3, child: Text('${convocatoria?.cargo}')),
          );
    },
    separatorBuilder: (context, index) {
      return Divider(
        thickness: 0.5,
        height: 0.5,
      );
    },
    itemCount: snapshot.data?.length ?? 0,
  ));
}

Container buildEditEmpresa(
    BuildContext context,
    ConvocatoriaController convocatoriaController,
    ConvocatoriaModel convocatoria,
    {required Null Function() editRefresh}) {
  return Container(
    child: IconButton(
      icon: const Icon(Icons.edit),
      color: Color(0xFF0323D8),
      onPressed: () {
        Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ConvocatoriaEdit(convocatoria)))
            .then((updateConvocatoria) {
          if (updateConvocatoria != null) {
            editRefresh();
            _showModalBottomSheet(context, "Convocatoria actualizada!");
          }
        });
      },
    ),
  );
}

IconButton showDetailEmpresa(
    BuildContext context, ConvocatoriaModel convocatoria) {
  return IconButton(
      onPressed: () {
        ConvocatoriaDetail(context, convocatoria);
      },
      icon: Icon(Icons.format_list_bulleted));
}

void _showModalBottomSheet(BuildContext context, String message) {
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
            ));
      });
}
