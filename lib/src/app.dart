import 'package:app_comercial/src/screens/log_in.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App comercial informativa',
        home: LogIn()
    );
  }
}