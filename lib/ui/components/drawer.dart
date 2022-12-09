import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/components/convocatorias.dart';
import 'package:proyecto_integrador_c6/ui/components/dashboard.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas.dart';
import 'package:proyecto_integrador_c6/ui/components/informacion.dart';
import 'package:proyecto_integrador_c6/ui/convocatorias_page.dart';
import 'package:proyecto_integrador_c6/ui/dashboard_page.dart';
import 'package:proyecto_integrador_c6/ui/empresas_page.dart';
import 'package:proyecto_integrador_c6/ui/informacion_page.dart';
import 'package:proyecto_integrador_c6/ui/login_page.dart';
import 'package:proyecto_integrador_c6/ui/components/practicas.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes.dart';
import 'package:proyecto_integrador_c6/ui/practicas_page.dart';
import 'package:proyecto_integrador_c6/ui/solicitudes_page.dart';

Widget DrawerMenu(String titulo, String nombre, String ap_paterno,
    String ap_materno, String codigo, BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text(titulo)),
    body: Center(child: _getWidget(titulo)),
    drawer: Drawer(
      backgroundColor: const Color(0xFF003361),
      child: ListView(
        padding: const EdgeInsets.only(top: 50.0),
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff003361),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/perfil.jpg"),
                child: Padding(padding: EdgeInsets.all(8)),
              )),
          Center(
            child: Center(
              child: Text(
                "${nombre} ${ap_paterno} ${ap_materno}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: "arial",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "${codigo}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "arial",
                  fontWeight: FontWeight.w100),
            ),
          ),
          ListTile(
            title: const Text(
              "Dashboard",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Dashboard(nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          ListTile(
            title: const Text(
              "Solicitudes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Solicitudes(nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          ListTile(
            title: const Text(
              "Practicas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Practicas(nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          ListTile(
            title: const Text(
              "Convocatorias",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Convocatorias(
                          nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          ListTile(
            title: const Text(
              "Empresas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Empresas(nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          ListTile(
            title: const Text(
              "Información",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "arial",
                  fontWeight: FontWeight.normal),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Informacion(nombre, ap_paterno, ap_materno, codigo)));
            },
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF003361),
                shadowColor: Colors.white,
                elevation: 3,
                minimumSize: Size(350, 50)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "Cerrar Sesion",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}

_getWidget(String titulo) {
  if (titulo == "Dashboard") {
    return DashboardPage();
  } else if (titulo == "Convocatorias") {
    return ConvocatoriasPage();
  } else if (titulo == "Empresas") {
    return EmpresasPage();
  } else if (titulo == "Informacion") {
    return InformacionPage();
  } else if (titulo == "Practicas") {
    return PracticasPage();
  } else if (titulo == "Solicitudes") {
    return SolicitudesPage();
  }
}
