import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';

void EmpresaDetail(BuildContext context, EmpresaModel empresa){
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
                    child: Text('${empresa.nombre}'),
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
                      'R.U.C.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${empresa.ruc}'),
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
                      'Actividad',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${empresa.actividad}'),
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
                      'Sector',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${empresa.sector}'),
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
                      'Direccion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${empresa.direccion}'),
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
                      'Convenio',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Container(
                    child: Text('${empresa.convenio}'),
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