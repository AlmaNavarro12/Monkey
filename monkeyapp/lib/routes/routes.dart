import 'package:flutter/material.dart';
import 'package:monkeyapp/pages/login_page.dart';
import '../pages/login.dart';
import '../pages/resetPassword.dart';
import '../pages/signup_page.dart';

final route = <String, WidgetBuilder>{
  '/' : (BuildContext context) => const SecondPage(),
  '/form' : (BuildContext context) => FormularioScreen(),
  '/sign' : (BuildContext context) => const SignUp(),
  '/register' : (BuildContext context) => FormularioScreen(),
  '/newpass' : (BuildContext context) => const NewPassword(),
  '/codpass' : (BuildContext context) => FormularioScreen(),
  '/findFood' : (BuildContext context) => FormularioScreen(),
  '/fastDelivery' : (BuildContext context) => FormularioScreen(),
  '/liveTacking' : (BuildContext context) => FormularioScreen(),
};