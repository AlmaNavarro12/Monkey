import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUp';

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static TextTheme getTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: getScreenWidth(context),
      height: getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Registro de usuario",
                style: getTheme(context).headline6,
              ),
              Spacer(),
              Text(
                "Agrega los datos correspondientes para su registro",
              ),
              Spacer(),
              TextFormField( decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Nombre completo')),
              Spacer(),
              TextFormField( decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Correo electronico')),
              Spacer(),
              TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Celular')),
              Spacer(),
              TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Dirección')),
              Spacer(),
              TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Contraseña')),
              Spacer(),
              TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Confirmar contraseña')),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Crear Registro"),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                      Navigator.pushNamed(context, '/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("¿Ya tienes una cuenta?"),
                    const Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
