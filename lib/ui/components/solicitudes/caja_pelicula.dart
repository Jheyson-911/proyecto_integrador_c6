import "package:flutter/material.dart";
import 'package:proyecto_integrador_c6/services/solicitudes/solicitud.dart';
import 'package:proyecto_integrador_c6/services/solicitudes/solicitud_service.dart';
import 'package:proyecto_integrador_c6/ui/components/solicitudes/edit_form.dart';
import 'package:quickalert/quickalert.dart';

class CajaSolicitud extends StatelessWidget {
  final Solicitud soli;
  const CajaSolicitud(this.soli, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      padding: const EdgeInsets.all(10),
      height: 50,
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              textAlign: TextAlign.center,
              soli.nombreEmpresa,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
                border: _borderColor(soli.estado),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Text(
              textAlign: TextAlign.center,
              soli.estado,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditFormSoli(soli)));
              },
              icon: const Icon(Icons.edit)),
          const SizedBox(
            width: 5,
          ),
          IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () async {
                var confirm = "¿Deseas eliminar la solicitud?";
                _confirmModal(context, confirm);
              },
              icon: const Icon(Icons.delete))
        ],
      ),
    );
  }

  _borderColor(String estado) {
    if (estado == "EN PROCESO") {
      return Border.all(color: Colors.orangeAccent, width: 3);
    } else if (estado == "ACEPTADA") {
      return Border.all(color: Colors.greenAccent, width: 3);
    } else if (estado == "RECHAZADA") {
      return Border.all(color: Colors.redAccent, width: 3);
    }
  }

  _confirmModal(BuildContext context, String message) {
    return QuickAlert.show(
        title: message,
        context: context,
        type: QuickAlertType.confirm,
        showCancelBtn: false,
        confirmBtnText: 'Si',
        cancelBtnText: 'No',
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () async {
          var response =
              await SolicitudDBService.deleteSolicitud(soli.id.toString());
          if (response == 1) {
            var mensaje = 'Elimiando correctamente';
            Navigator.pop(context);
            return _succesModal(context, mensaje);
          } else {
            var mensaje = "Ocurrio un error al eliminar la solicitud";
            Navigator.pop(context);
            return _errorModal(context, mensaje);
          }
        },
        onCancelBtnTap: (() {
          Navigator.pop(context);
        }),
        cancelBtnTextStyle: const TextStyle(
          color: Colors.pink,
        ));
  }

  _succesModal(BuildContext context, String message) {
    return QuickAlert.show(
        title: message,
        context: context,
        type: QuickAlertType.success,
        text: 'Transaction Completed Successfully!',
        autoCloseDuration: const Duration(seconds: 2));
  }

  _errorModal(BuildContext context, String message) {
    return QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: 'Sorry, something went wrong',
        autoCloseDuration: const Duration(seconds: 2));
  }
}
