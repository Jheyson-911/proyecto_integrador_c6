import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textInputMx(TextEditingController controllermx,  String labelmx) {
  return Container(
    // padding: EdgeInsets.all(10),
    height: 50,
    width: 250,
    child: TextFormField(
      controller: controllermx,
      decoration: InputDecoration(
        labelText: labelmx,
        filled: true,
        fillColor: Color(0xFFf5f5f5),
        border: OutlineInputBorder(
          borderRadius:
            BorderRadius.all(Radius.circular(5.0))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0, 
            color: Color(0xFF003361)
          ),
          borderRadius:
            BorderRadius.all(Radius.circular(5.0))
        ),
      ),
    ),
  );
}