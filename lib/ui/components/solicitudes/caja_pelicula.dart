import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/solicitudes/solicitud.dart';

class CajaSolicitud extends StatelessWidget {
  final Solicitud soli;
  const CajaSolicitud(this.soli, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(soli.nombreEmpresa),
      subtitle: Text(soli.actividad),
    );
  }
}
