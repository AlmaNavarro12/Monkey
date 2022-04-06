import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nueva contraseña',
                style: TextStyle(fontSize: 25.0),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Por favor ingrese a su correo para restaurar una nueva contraseña",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Nueva contraseña'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Confirmar contraseña'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                  child: Text("Siguiente"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
