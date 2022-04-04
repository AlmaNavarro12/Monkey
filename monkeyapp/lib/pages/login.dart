import 'dart:js';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget> [
          ],
        ),
      )
    );
  }
}

Widget inputName(_controller) {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 10.0), //dentro del contenedor
    margin: const EdgeInsets.symmetric(horizontal: 30.0), //fuera del contenedor
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Theme.of(context).primaryColor),
    ),
    child: TextFormField(
      autofocus: true,
      controller: _controller, //Se usa el guión _ para diferenciar la variable
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.supervised_user_circle),
          labelText: 'Nombre'),
    ),
  );
}