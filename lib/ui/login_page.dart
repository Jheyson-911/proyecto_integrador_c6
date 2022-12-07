import 'dart:convert';

import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/ui/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _controllerEmail;
  late TextEditingController _controllerPassword;

  @override
  void initState() {
    _controllerEmail = TextEditingController(text: "");
    _controllerPassword = TextEditingController(text: "");
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
                      controller: _controllerEmail,
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
                          label: Text("Email")),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _controllerEmail,
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
                          backgroundColor: Color(0xFF003361),
                          shadowColor: Colors.green,
                          elevation: 3,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          minimumSize: const Size(400, 60)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()));
                        print("Estas intentando ingresar ");
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
