import 'dart:convert';
import 'dart:io';

import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/drawerView/dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _controllerUsername;
  late TextEditingController _controllerPassword;

  @override
  void initState() {
    _controllerUsername = TextEditingController(text: "fanny1");
    _controllerPassword = TextEditingController(text: "123456");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo-login.webp"),
              const SizedBox(
                height: 80,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _controllerUsername,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text("Username")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerPassword,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFf5f5f5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Color(0xFF003361)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text("Password")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF003361),
                          shadowColor: Colors.green,
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          minimumSize: const Size(400, 60)),
                      onPressed: () async {
                        var data;
                        var response;
                        data = {
                          "username": _controllerUsername.text,
                          "password": _controllerPassword.text
                        };

                        try {
                          var url = Uri.parse(
                              "http://192.168.1.9:3000/apiv1/auth/login");

                          response = await http.post(url,
                              headers: {
                                HttpHeaders.contentTypeHeader:
                                    "application/json",
                              },
                              body: jsonEncode(data));
                          print(response.statusCode);
                        } catch (e) {
                          return showModalBottomSheet<void>(
                              context: context,
                              builder: (context) {
                                return Container(
                                    height: 50,
                                    color: Colors.red,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text(
                                            "No hay conexión",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        }

                        var respuesta = jsonDecode(response.body);
                        var message = respuesta["message"];
                        var token = respuesta["data"];
                        print(respuesta);
                        print(message);
                        print(token);
                        if (token == null) {
                          return showModalBottomSheet<void>(
                              context: context,
                              builder: (context) {
                                return Container(
                                    height: 50,
                                    color: Colors.red,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "$message",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        }
                        var jwtverify = JWT.verify(token, SecretKey("123"));
                        //print(jwtverify.payload);
                        var nombre = message;
                        print(jwtverify.payload["nombres"]);
                        print(jwtverify.payload["ap_paterno"]);
                        print(jwtverify.payload["ap_materno"]);
                        print(jwtverify.payload["codigo"]);

                        var nombres = jwtverify.payload["nombres"];
                        var ap_paterno = jwtverify.payload["ap_paterno"];
                        var ap_materno = jwtverify.payload["ap_materno"];
                        var codigo = jwtverify.payload["codigo"];
                        if (message.split(" ")[1] ==
                            jwtverify.payload["usuario"]) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard(nombres,
                                      ap_paterno, ap_materno, codigo)));

                          return showModalBottomSheet<void>(
                              context: context,
                              builder: (context) {
                                return Container(
                                    height: 50,
                                    color: Colors.green,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "${message}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        }
                      },
                      child: const Text("Login"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue[900],
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
