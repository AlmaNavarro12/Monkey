import 'package:flutter/material.dart';
import 'package:monkeyapp/pages/login_page.dart';
import '../pages/login.dart';

final route = <String, WidgetBuilder>{
  '/' : (BuildContext context) => const SecondPage(),
  '/form' : (BuildContext context) => FormularioScreen()
};