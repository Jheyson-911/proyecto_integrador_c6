import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/components/drawer.dart';

class Convocatorias extends StatefulWidget {
  final String nombre_usuario;
  final String ap_paterno;
  final String ap_materno;
  final String codigo;
  const Convocatorias(
      this.nombre_usuario, this.ap_paterno, this.ap_materno, this.codigo,
      {super.key});

  @override
  State<Convocatorias> createState() => _ConvocatoriasState();
}

class _ConvocatoriasState extends State<Convocatorias> {
  String titulo = "Convocatorias";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DrawerMenu(titulo, widget.nombre_usuario, widget.ap_paterno,
          widget.ap_materno, widget.codigo, context),
    );
  }
}
