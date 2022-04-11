import 'package:flutter/material.dart';
import 'package:monkeyapp/pages/findFood.dart';

class NewPassword extends StatelessWidget {
  static const routeName = "/newPass";

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Nueva Contraseña", style: getTheme(context).headline6),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ingrese la nueva contraseña para su correcto inicio de sesión",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Nueva contraseña')),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Confirmar contraseña'),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(FindFood.routeName);
                    },
                    child: Text("Siguiente"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
