import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/ConvocatoriaService.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/convocatoriaController.dart';
import 'package:proyecto_integrador_c6/ui/components/convocatorias/convocatoriaForm.dart';
import 'package:proyecto_integrador_c6/ui/components/convocatorias/convocatoriaList.dart';

class ConvocatoriasPage extends StatefulWidget {
  const ConvocatoriasPage({super.key});

  @override
  State<ConvocatoriasPage> createState() => _ConvocatoriasPageState();
}

class _ConvocatoriasPageState extends State<ConvocatoriasPage> {
  var convocatoriaController = ConvocatoriaController(ConvocatoriaServiceMx());

  @override
  void initState() {
    super.initState();
    convocatoriaController.fetchConvocatoriaList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      body: FutureBuilder<List<ConvocatoriaModel>>(
        future: convocatoriaController.fetchConvocatoriaList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Data error'),
            );
          }
          return ConvocatoriaList(
            snapshot, 
            convocatoriaController,
            refreshMx: (){
              setState(() {
                convocatoriaController.fetchConvocatoriaList();
              });
            }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (_) => ConvocatoriaForm())
          ).then((newContact) {
            if (newContact != null) {
              setState(() {
                // empresaController.fetchEmpresaList();
                // _showModalBottomSheet(context, "Empresa registrada!");
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    )
    );
  }
}
