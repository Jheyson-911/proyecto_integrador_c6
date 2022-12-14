import "package:flutter/material.dart";
import 'package:percent_indicator/percent_indicator.dart';
import 'package:proyecto_integrador_c6/services/dashboard/dashboard_service.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/spinner.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: HoraTotalDBService.getHoras("2"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var valor = int.parse(snapshot.data!);
            var porcentaje = (valor * 0.1) / 70;
            return Center(
                child: ListView(children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              CircularPercentIndicator(
                radius: 140.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                //percent: porcentaje.roundToDouble(),
                percent: porcentaje,
                center: Text(
                  "Mis horas de practica: $valor",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.yellow,
                progressColor: Colors.red,
              ),
              const SizedBox(
                height: 30,
              ),
            ]));
          } else {
            return SpinnerWidget();
          }
        },
      ),
    );
  }
}
