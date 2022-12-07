import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/components/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String titulo = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DrawerMenu(titulo, context),
    );
  }
}
