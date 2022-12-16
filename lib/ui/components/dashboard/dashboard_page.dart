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
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          FutureBuilder(
            future: HoraTotalDBService.getHoras("2"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var valor = int.parse(snapshot.data!);
                var porcentaje = (valor * 0.1) / 70;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      header: Text(
                        "Mis horas de practica: $valor",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      radius: 80.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 15.0,
                      //percent: porcentaje.roundToDouble(),
                      percent: porcentaje,
                      center: Text(
                        "${(porcentaje * 100).toStringAsFixed(2)}%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Colors.yellow,
                      progressColor: Colors.red,
                    ),
                  ],
                );
              } else {
                return SpinnerWidget();
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "Estudiantes que estan en proceso de PPP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          FutureBuilder(
            future: HoraTotalDBService.getEstudiantesProceso(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var proceso = int.parse(snapshot.data![0].proceso);
                var total = int.parse(snapshot.data![0].total);
                var porcentaje = (proceso * 0.1) / (total / 10);
                print(porcentaje);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: porcentaje,
                      center: Text(
                        "${(porcentaje * 100).toStringAsFixed(2)}%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      barRadius: Radius.circular(16),
                      progressColor: Colors.green,
                    ),
                  ],
                );
              } else {
                return SpinnerWidget();
              }
            },
          ),
        ],
      ),
    ));
  }
}
