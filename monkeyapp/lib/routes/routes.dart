import 'package:flutter/material.dart';
import 'package:monkeyapp/pages/login_page.dart';
import '../pages/codReset.dart';
import '../pages/findFood.dart';
import '../pages/login.dart';
import '../pages/newPassword.dart';
import '../pages/resetPassword.dart';
import '../pages/signup_page.dart';

final route = <String, WidgetBuilder>{
  '/' : (BuildContext context) => const SecondPage(),
  '/sign' : (BuildContext context) => LoginWithScreen(),
  '/register' : (BuildContext context) => SignUpScreen(),
  '/newpass' : (BuildContext context) => NewPassword(),
  '/codpass' : (BuildContext context) => CodReset(),
  '/carrusel' : (BuildContext context) => FindFood()
};