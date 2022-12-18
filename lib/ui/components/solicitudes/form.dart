import 'dart:convert';
import 'dart:io';

import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/solicitudes/solicitud_service.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/solicitudes_page.dart';
import 'package:http/http.dart' as http;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:quickalert/quickalert.dart';

class FormSoli extends StatefulWidget {
  const FormSoli({super.key});
  @override
  State<FormSoli> createState() => _SolicitudesPageState();
}

class _SolicitudesPageState extends State<FormSoli> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _controllerName;
  late TextEditingController _controllerRuc;
  late TextEditingController _controllerActividad;
  late TextEditingController _controllerSector;
  late TextEditingController _controllerDireccion;
  late TextEditingController _controllerNombre;
  late TextEditingController _controllerCargo;
  late TextEditingController _controllerAreaEncargada;
  late TextEditingController _controllerDescripcion;

  @override
  void initState() {
    _controllerName = TextEditingController(text: "");
    _controllerRuc = TextEditingController(text: "");
    _controllerActividad = TextEditingController(text: "");
    _controllerSector = TextEditingController(text: "");
    _controllerDireccion = TextEditingController(text: "");
    _controllerNombre = TextEditingController(text: "");
    _controllerCargo = TextEditingController(text: "");
    _controllerAreaEncargada = TextEditingController(text: "");
    _controllerDescripcion = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          'Crear Solicitud',
        ),
      )),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text(
                      'DATOS DE LA EMPRESA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerName,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Nombre")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerRuc,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Ruc")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerActividad,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Actividad")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerSector,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Sector")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerDireccion,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Direccion")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'DATOS DEL REPRESENTANTE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerNombre,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Nombre")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerCargo,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Cargo")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerAreaEncargada,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text("Area encargada")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerDescripcion,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label:
                              Text("Descripción de la solicitud (opcional)")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 202, 16, 16)),
                          onPressed: () async {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: const Icon(Icons.exit_to_app),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 11, 168, 90)),
                          onPressed: () async {
                            var data;
                            var response;
                            data = {
                              "nombre_empresa": _controllerName.text,
                              "ruc": _controllerRuc.text,
                              "actividad": _controllerActividad.text,
                              "sector": _controllerSector.text,
                              "direccion": _controllerDireccion.text,
                              "representante": _controllerNombre.text,
                              "cargo": _controllerCargo.text,
                              "area": _controllerAreaEncargada.text,
                              "descripcion": _controllerDescripcion.text
                            };
                            var respuesta =
                                await SolicitudDBService.createSolicitud(
                                    "2", data);

                            Navigator.pop(
                              context,
                            );
                            if (respuesta == 1) {
                              var message =
                                  "Solicitud actualizada correctamente";

                              _succesModal(message);
                            } else {
                              var message =
                                  "Ocurrio un error al actualizar la solicitud";
                              _errorModal(context, message);
                            }
                          },
                          child: const Icon(Icons.save),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _succesModal(String message) {
    return QuickAlert.show(
      title: message,
      context: context,
      type: QuickAlertType.success,
    );
  }

  _errorModal(BuildContext context, String message) {
    return QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: message,
    );
  }
}
