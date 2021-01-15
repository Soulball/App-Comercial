import 'package:flutter/material.dart';

class FormTextBox extends StatelessWidget {
  //Variables
  String dataValue;
  String data;
  bool hide;
  final valueControl;

  //Constructor
  FormTextBox({this.data, this.hide, this.valueControl});

  //Metodos
  String getValue(){return dataValue;}

  //Widget
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: valueControl,
        decoration: InputDecoration(labelText: data),
        obscureText: hide,
        validator: (value) {
          if (value.isEmpty)
            // ignore: missing_return
            return "Este campo no puede estar vacío.";
          else
            return null;
        },
        onSaved: (value) {
          dataValue = value;
        });
  }
}
