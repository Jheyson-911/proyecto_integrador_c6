import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/convocatoriaModel.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/ConvocatoriaService.dart';
import 'package:proyecto_integrador_c6/services/convocatoria/convocatoriaController.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaController.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaService.dart';
import 'package:proyecto_integrador_c6/ui/components/widgets/alertModalMx.dart';
import 'package:proyecto_integrador_c6/ui/components/widgets/autocompleteEmpresaMx.dart';
import 'package:proyecto_integrador_c6/ui/components/widgets/textInputMx.dart';

class ConvocatoriaForm extends StatefulWidget {
  const ConvocatoriaForm({super.key});

  @override
  State<StatefulWidget> createState() => _ConvocatoriaForm();
}

class _ConvocatoriaForm extends State<ConvocatoriaForm> {
  final _formKey = GlobalKey<FormState>();
  var convocatoriaController = ConvocatoriaController(ConvocatoriaServiceMx());
  var empresaController = EmpresaController(EmpresaServiceMx());

  TextEditingController _controllerEmpresa = TextEditingController();
  TextEditingController _controllerDescripcion = TextEditingController();
  TextEditingController _controllerCupos = TextEditingController();
  TextEditingController _controllerCargo = TextEditingController();
  TextEditingController _controllerTiempo = TextEditingController();
  TextEditingController _controllerLugar = TextEditingController();
  TextEditingController _controllerFechaLimite = TextEditingController();
  TextEditingController _controllerTelefono = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Convocatoria"),
      ),
      body: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Column(children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.maps_home_work),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerEmpresa, 'Empresa')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.tag),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerDescripcion, 'Descripcion')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.work),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerCupos, 'Cupos')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.join_full),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerCargo, 'Cargo')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.place),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerTiempo, 'Tiempo')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.assured_workload),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerLugar, 'Lugar')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.assured_workload),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerFechaLimite, 'Fecha Limite')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.assured_workload),
                          margin: EdgeInsets.all(20.0),
                        ),
                        textInputMx(_controllerTelefono, 'Telefono')
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Text("Guardar"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF003361),
                            shadowColor: Colors.green,
                            elevation: 5,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0))),
                            minimumSize: const Size(300, 60),
                          ),
                          onPressed: () async {
                            print("presionando envio");
                            if (
                                // _controllerEmpresa.text.isNotEmpty
                                _controllerDescripcion.text.isNotEmpty
                                    // && _controllerCupos.text.isNotEmpty
                                    &&
                                    _controllerCargo.text.isNotEmpty &&
                                    _controllerTiempo.text.isNotEmpty &&
                                    _controllerLugar.text.isNotEmpty &&
                                    _controllerFechaLimite.text.isNotEmpty &&
                                    _controllerTelefono.text.isNotEmpty) {
                              ConvocatoriaModel convocatoriamx =
                                  ConvocatoriaModel(
                                descripcion: _controllerDescripcion.text,
                                cupos: _controllerCupos.text,
                                cargo: _controllerCargo.text,
                                tiempo: _controllerTiempo.text,
                                lugar: _controllerLugar.text,
                                fechaLimite: _controllerFechaLimite.text,
                                telefono: _controllerTelefono.text,
                                fkEmpresaId: int.parse(_controllerEmpresa.text),
                              );

                              print(convocatoriamx.toJson());

                              convocatoriaController
                                  .createPostConvocatoria(convocatoriamx);
                              Navigator.pop(context, () {});
                            } else {
                              alertModalMx(context, 'Complete todos los campos',
                                  Colors.red);
                            }
                          },
                        ),
                      ],
                    ),
                  ]))
            ],
          ))),
    );
  }
}
