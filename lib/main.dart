import 'Register.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(home: Login(), routes: <String, WidgetBuilder>{
    '/Login': (BuildContext context) => Login(),
    '/Register': (BuildContext context) => Register(),
  }));
}
