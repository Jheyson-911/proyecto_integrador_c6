import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaController.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaService.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas/empresaDetail.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas/empresaForm.dart';
import 'package:proyecto_integrador_c6/ui/components/empresas/empresaList.dart';

class EmpresasPage extends StatefulWidget {
  const EmpresasPage({super.key});

  @override
  State<EmpresasPage> createState() => _EmpresasPageState();
}

class _EmpresasPageState extends State<EmpresasPage> {
  var empresaController = EmpresaController(EmpresaServiceMx());

  @override
  void initState() {
    super.initState();
    empresaController.fetchEmpresaList(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<EmpresaModel>>(
        future: empresaController.fetchEmpresaList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Data error'),
            );
          }
          return EmpresaList(
            snapshot, 
            empresaController,
            refreshMx: (){
              setState(() {
                empresaController.fetchEmpresaList();
              });
            }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (_) => EmpresaForm())
          ).then((newContact) {
            if (newContact != null) {
              setState(() {
                empresaController.fetchEmpresaList();
                // _modalBottomSheetMenu(context);
                _showModalBottomSheet(context, "Empresa registrada!");
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context, String message){
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        height: 50,
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      );
    }
  );
}