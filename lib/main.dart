import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/ui/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MaterialColor micolor = const MaterialColor(
    0xFF003361,
    <int, Color>{
      50: Color(0xFF003361),
      100: Color(0xFF003361),
      200: Color(0xFF003361),
      300: Color(0xFF003361),
      400: Color(0xFF003361),
      500: Color(0xFF003361),
      600: Color(0xFF003361),
      700: Color(0xFF003361),
      800: Color(0xFF003361),
      900: Color(0xFF003361),
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: micolor, fontFamily: 'RobotoMono'),
        home: const LoginPage());
  }
}
