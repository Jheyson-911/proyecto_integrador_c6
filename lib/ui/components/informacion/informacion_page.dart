import "package:flutter/material.dart";

class InformacionPage extends StatefulWidget {
  const InformacionPage({super.key});

  @override
  State<InformacionPage> createState() => _InformacionPageState();
}
 _launchURL() async {
   print("HOLA");
  }

  Widget _ButtomWTSP() {
    return FloatingActionButton(
      onPressed: _launchURL,
      child: GestureDetector(
        child: Icon(Icons.whatsapp),
      ),
    );
  }


class _InformacionPageState extends State<InformacionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Scaffold(
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _ButtomWTSP(),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: Image.network(
                      'https://i.ytimg.com/vi/oz2V3zuXOX0/maxresdefault.jpg',
                      height: 300,
                      width: 800,
                      fit: BoxFit.contain,
                    )),
                Column(
                  children: [

                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'ACERCA DE LA CARRERA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'La carrera de Ingeniería de Sistemas prepara profesionales con conocimientos científicos y habilidades que les permitan identificar problemas, planificar, proyectar, mantener, supervisar, administrar proyectos y formular soluciones integrales de sistemas organizacionales e informáticos. Utilizamos herramientas como el modelamiento, diseño y rediseño de sistemas aplicados a los procesos de producción y de servicio,  en concordancia con los principios de la filosofía cristiana',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),

                    Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: Image.network(
                      'https://upeu.edu.pe/wp-content/uploads/2022/08/WhatsApp-Image-2022-07-27-at-10.09.34-AM-1080x675.jpeg',
                      height: 300,
                      width: 800,
                      fit: BoxFit.contain,
                    )),


                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '¿QUÉ SON LAS PRACTICAS PRE PROFESIONALES?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Text(
                        'Es la modalidad que permite a la persona en formación durante su condición de estudiante aplicar sus conocimientos, habilidades y aptitudes mediante el desempeño en una situación real de trabajo.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),


                    Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: Image.network(
                      'https://upeu.edu.pe/wp-content/uploads/2022/06/Ceremonia-de-investidura-de-pra%CC%81cticas-pre-profesionales-a-25-estudiantes-de-Ingenieri%CC%81a-de-Sistemas-de-la-UPeU-Juliaca0.jpeg',
                      height: 300,
                      width: 800,
                      fit: BoxFit.contain,
                    )),


                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'REGLAMENTO DE PRACTICAS PRE PROFESIONALES DE LA ESCUELA DE INGENIERIA DE SISTEMAS ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'CAPITULO 1 DE LAS DISPOSICIONES GENERALES ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Text(
                        'ARTICULO 1: Las practicas Pre Profesionales son de caracter obligatorio y requisito para la obtencion del grado de Bachiller en la Escuela Profesional de Ingenieria de Sistemas. ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Text(
                        'ARTICULO3: Las Practicas Pre Profesionales tendran una duracion nimina de 750 horas acumulables en una o varias actividades diferentes.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Text(
                        'N° de horas en empresa = 700 + N° de horas de proyeccion social = 50',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      
                    ),


                    Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: Image.network(
                      'https://upeu.edu.pe/wp-content/uploads/2022/10/WhatsApp-Image-2022-10-18-at-9.02.09-AM-scaled.jpeg',
                      height: 300,
                      width: 800,
                      fit: BoxFit.contain,
                    )),


                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Text(
                        '¿COMÓ INICIAR MIS PPP?',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      
                    ),


                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '1. Solicita a la secretaria de la escuela la CARTA DE PRESENTACION (https://forms.gle/3mykY5TGopdQAMKo9).',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '2. Recepciona de la secretaría la carta de presentación y llevala al centro de prácticas Solicita del centro de practicas tu carta de aceptación',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '3. Solicita del centro de practicas tu carta de aceptación',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '4. Notifica al coordinador de PPP (Ing...), sobre el inicio de las prácticas y entrega el digital de los documentos',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '5. Una vez iniciado la prácticas, elabora tu plan de prácticas y gestiona tu convenio de prácticas',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '6. El coordinador de PPP cronograma según tu plan de prácticas 3 supervisiones(inicial, intermedia y final)',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),

                    Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: Image.network(
                      'https://upeu.edu.pe/wp-content/uploads/2022/03/380-bachilleres-de-la-UPeU-Campus-Juliaca-participaron-en-la-emotiva-ceremonia-de-graduacio%CC%81n-20212-1080x675.jpeg',
                      height: 300,
                      width: 800,
                      fit: BoxFit.contain,
                    )),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '7.Al término de tus prácticas entrega al tu jefe inmediato la ficha de evaluación de prácticas',
                
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),

                    Container(
                       padding: EdgeInsets.all(10),
                      child: Text(
                        '8.Todos estos documentos formarán parte de tu informe de prácticas pre profesionales el cual se sustentará frente a un jurado de docentes.',
                        
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
