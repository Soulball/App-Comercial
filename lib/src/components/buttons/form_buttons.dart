import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  //Variables
  String data;

  //Constructor
  FormButton({this.data, onPressed});

  //Widget
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Text(data));
  }
}