import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginWithScreen extends StatefulWidget {
  LoginWithScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithScreen> createState() => _LoginWithScreenState();
}

class _LoginWithScreenState extends State<LoginWithScreen> {
  late TextEditingController _controller;
  var maskFormatter ;

  bool nombre = false;
  bool password = false;

  @override
  void initState() {
    //TODO: Sirve para recordar en que se queda el código
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    //TODO: Sirve para recordar en que se queda el código
    super.dispose();
    _controller.dispose();
  }

  //Se sobre escibe un nuevo método
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 45,
              vertical: 35,
            ),
            child: Column(
              children: <Widget> [
                const Text(
                  "Inicio"
                ),
                const Spacer(),
                const Text('Agrega los detalles de inicio de sesión'),
                const Spacer(),
                TextFormField(
                 decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Tu correo'),
                ),
                const Spacer(),
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    labelText: 'Contraseña'),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/newpass');
                    },
                    child: const Text("Login"),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                  },
                  child: const Text("¿Olvidaste tu contraseña?"),
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text("O inicia con"),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blueAccent
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(''
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text("Iniciar sesión con Facebook")
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(''),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text("Iniciar con Google")
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("¿No tienes una cuenta?"),
                      const Text(
                        "Registrate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );;
  }
}