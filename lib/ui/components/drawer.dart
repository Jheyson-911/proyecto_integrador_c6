import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/login_page.dart';

Widget DrawerMenu(String titulo, BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text(titulo)),
    body: const Center(
      child: Text('My Page!'),
    ),
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
          const Center(
            child: Text(
              "Jason Willy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "arial",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "202012378",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
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
              Navigator.pop(context);
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
              Navigator.pop(context);
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
              Navigator.pop(context);
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
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
