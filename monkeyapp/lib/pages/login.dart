import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioScreen extends StatefulWidget {
  FormularioScreen({Key? key}) : super(key: key);

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
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
              children: [
                Text(
                  "Login",
                  style: ,
                ),
                Spacer(),
                Text('Agrega los detalles de inicio de sesión'),
                Spacer(),
                Cus    tomTextInput(
                  hintText: "Tu correo",
                ),
                Spacer(),
                CustomTextInput(
                  hintText: "Password",
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("¿Olvidaste tu contraseña?"),
                ),
                Spacer(
                  flex: 2,
                ),
                Text("O inicia con"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          ,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "fb.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Facebook")
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "google.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
}



class CustomTextInput {
}