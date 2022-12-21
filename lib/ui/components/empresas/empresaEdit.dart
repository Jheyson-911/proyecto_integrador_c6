import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_integrador_c6/model/empresaModel.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaController.dart';
import 'package:proyecto_integrador_c6/services/empresa/empresaService.dart';
import 'package:proyecto_integrador_c6/ui/components/widgets/textInputMx.dart';

class EmpresaEdit extends StatefulWidget {
  final EmpresaModel empresa;
  const EmpresaEdit(this.empresa, {super.key});

  @override
  State<StatefulWidget> createState() => _EmpresaEdit();
}

class _EmpresaEdit extends State<EmpresaEdit> {
  final _formKey = GlobalKey<FormState>();
  var empresaController = EmpresaController(EmpresaServiceMx());

  TextEditingController _controllerNombre = TextEditingController();
  TextEditingController _controllerRuc = TextEditingController();
  TextEditingController _controllerActividad = TextEditingController();
  TextEditingController _controllerSector = TextEditingController();
  TextEditingController _controllerDireccion = TextEditingController();
  TextEditingController _controllerConvenio = TextEditingController();

  @override
  void initState() {
    _controllerNombre.text = widget.empresa.nombre!;
    _controllerRuc.text = widget.empresa.ruc!;
    _controllerActividad.text = widget.empresa.actividad!;
    _controllerSector.text = widget.empresa.sector!;
    _controllerDireccion.text = widget.empresa.direccion!;
    _controllerConvenio.text = widget.empresa.convenio!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Editar Empresa"),
        ),
        body: Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                    key: _formKey,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.maps_home_work),
                            margin: EdgeInsets.all(20.0),
                          ),
                          textInputMx(_controllerNombre, 'Nombre')
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
                          textInputMx(_controllerRuc, 'R.U.C.')
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
                          textInputMx(_controllerActividad, 'Actividad')
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
                          textInputMx(_controllerSector, 'Sector')
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
                          textInputMx(_controllerDireccion, 'Direccion')
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
                          textInputMx(_controllerConvenio, 'Convenio')
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
                            child: Text("Actualizar"),
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
                              EmpresaModel empresaUpdate = EmpresaModel(
                                id: widget.empresa.id,
                                nombre: _controllerNombre.text,
                                actividad: _controllerActividad.text,
                                convenio: _controllerConvenio.text,
                                direccion: _controllerDireccion.text,
                                ruc: _controllerRuc.text,
                                sector: _controllerSector.text,
                              );

                              empresaController.updatePutEmpresa(empresaUpdate);
                              Navigator.pop(context, () {});
                            },
                          ),
                        ],
                      ),
                    ]))
              ],
            ))));
  }
}
