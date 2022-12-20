import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';

void ConvocatoriaDetail(BuildContext context, ConvocatoriaModel convocatoria){
  showModalBottomSheet(
    context: context,
    builder: (builder){
      // ignore: unnecessary_new
      return Container(
        height: 600.0,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)
            )
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    child: Icon(Icons.maps_home_work),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Empresa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.fkEmpresaId}'),
                    margin: EdgeInsets.all(25.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.tag),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Descripcion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.descripcion}'),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 20.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.work),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Cupos',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.cupos}'),
                    margin: EdgeInsets.all(20.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.join_full),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Cargo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.cargo}'),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 20.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.place),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Tiempo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.tiempo}'),
                    margin: EdgeInsets.all(20.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.assured_workload),
                    margin: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text(
                      'Telefono',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${convocatoria.telefono}'),
                    margin: EdgeInsets.all(20.0), 
                  ),
                ],
              ),

            ]
          ),
        ),
      );
    }
  );
}