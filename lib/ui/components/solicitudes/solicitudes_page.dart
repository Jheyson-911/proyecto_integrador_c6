import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/solicitudes/solicitud_service.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/caja_pelicula.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/form.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/spinner.dart';

class SolicitudesPage extends StatefulWidget {
  const SolicitudesPage({super.key});

  @override
  State<SolicitudesPage> createState() => _SolicitudesPageState();
}

class _SolicitudesPageState extends State<SolicitudesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: SolicitudDBService.getSolicitudes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var solicitud = snapshot.data![index];
                return CajaSolicitud(solicitud);
              },
            );
          } else {
            return SpinnerWidget();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FormSoli(accion as Function)),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
    ;
  }

  @override
  void initState() {
    super.initState();
  }

  void accion() {
    setState(() {});
  }
}
