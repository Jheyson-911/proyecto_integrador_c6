
import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/practicas/practica.dart';

import 'package:intl/intl.dart';

class CajaPractica extends StatelessWidget {
  final Practica practi;
  const CajaPractica(this.practi, {super.key});

  @override
  Widget build(BuildContext context) {
    var fInicio = DateTime.tryParse(practi.fInicio);
    var fFinal = DateTime.tryParse(practi.fFin);
    var formateador = DateFormat('M/d/y');
    final String fechaInicio = formateador.format(fInicio!);
    final String fechaFinal = formateador.format(fFinal!);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
      padding: const EdgeInsets.all(10),
      height: 150,
      child: Row(
        children: [
          SizedBox(
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Horas:",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Duracion:",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Estado:",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    practi.horas,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    fechaInicio + "-" + fechaFinal,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    practi.estado,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
