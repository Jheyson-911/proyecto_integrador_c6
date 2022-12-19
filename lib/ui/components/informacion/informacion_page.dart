import "package:flutter/material.dart";

class InformacionPage extends StatefulWidget {
  const InformacionPage({super.key});

  @override
  State<InformacionPage> createState() => _InformacionPageState();
}

class _InformacionPageState extends State<InformacionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "A partir del 6to ciclo académico y los créditos aprobados, ya puedes realizar tus practicas pre profesionales en una organización publica, privada o mixta donde desarrolles actividades afines a la carrera. \nLos alumnos que no cuenten con el 6to ciclo y los créditos aprobados, no podrá realizar sus practicas pre profesionales",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Finalidad",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text(
                  "Complementar y afirmar los conocimientos impartidos en la\nuniversidad con la experiencia en la actividad profesional.")
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text(
                  "Lograr una adecuada adaptación del estudiante a la actividad\nprofesional.")
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text(
                  "Lograr en el estudiante el desarrollo de habilidades, destrezas\ny sólida formación ética en el desempeño de sus funciones.")
            ],
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text(
          //     "Si tiene dudas o consultas, puede enviar un correo a oficinadepracticas@upeu.edu.pe"),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Duración",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text("Ingenierias: 700 horas (7 meses aprox.)")
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text("Ciencias Empresariales: 700 horas (7 meses aprox.)")
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text("Ciencias de la Salud: 700 horas (7 meses aprox.)")
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "• ",
              ),
              Text("Ciencias de la Educación: 700 horas (7 meses aprox.)")
            ],
          ),
        ],
      ),
    );
  }
}
