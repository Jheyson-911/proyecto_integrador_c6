import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/practicas/pracitca_service.dart';
import 'package:proyecto_integrador_c6/ui/components/practicas/caja_practica.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/spinner.dart';

class PracticasPage extends StatefulWidget {
  const PracticasPage({super.key});

  @override
  State<PracticasPage> createState() => _PracticasPageState();
}

class _PracticasPageState extends State<PracticasPage> {
  @override
  Widget build(BuildContext context) {
    return PracticasDBPage();
  }

  @override
  void initState() {
    super.initState();
  }
}

class PracticasDBPage extends StatelessWidget {
  const PracticasDBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: PracticaDBService.getPracticas("2"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var practica = snapshot.data![index];
                return CajaPractica(practica);
              },
            );
          } else {
            return SpinnerWidget();
          }
        },
      ),
    );
  }
}
