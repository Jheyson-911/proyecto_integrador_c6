import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/components/drawer.dart';

class Dashboard extends StatefulWidget {
  final String nombre_uuario;
  final String ap_paterno;
  final String ap_materno;
  final String codigo;
  const Dashboard(
      this.nombre_uuario, this.ap_paterno, this.ap_materno, this.codigo,
      {super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String titulo = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageDashboard(context, titulo, widget.nombre_uuario,
          widget.ap_paterno, widget.ap_paterno, widget.codigo),
    );
  }
}

_pageDashboard(BuildContext context, titulo, nombre_uuario, ap_paterno,
    ap_materno, codigo) {
  return Scaffold(
    body: DrawerMenu(
        titulo, nombre_uuario, ap_paterno, ap_materno, codigo, context),
  );
}
