import 'package:app_comercial/src/components/buttons/form_buttons.dart';
import 'package:app_comercial/src/components/text_boxes/form_text_boxes.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  //Variables
  final formKey = GlobalKey<FormState>();

  //Widgets
  FormTextBox userFormTextBox =
      FormTextBox(data: 'Nombre de usuario:', hide: false);

  FormTextBox passFormTextBox =
      FormTextBox(data: 'Contraseña:', hide: true);

  //Builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              userFormTextBox,
              SizedBox(height: 25),
              passFormTextBox,
              SizedBox(height: 15),
              RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Iniciar Sesion"),
                  onPressed: () {
                    do_print(context);
                  })
            ],
          ),
        ),
      ),
    );
  }

  void do_print(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(userFormTextBox.getValue());
      print(passFormTextBox.getValue());
    }
  }
}
