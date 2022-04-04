import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('lib/src/img/superior_sombra.png',
          fit: BoxFit.fill,
          width: _width),
          Image.asset('lib/src/img/superior_naranja.png',
          fit: BoxFit.fill, 
          width: _width,
          height: 350.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.asset('lib/src/img/fondo_logo.png',
                width: 150),
                Image.asset('lib/src/img/logo.png')
              ],
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const SizedBox(width: 5.0),
                  Text('Meal', 
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor
                  )),
                  const SizedBox(width: 5.0),
                  Text('Monket', 
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary
                  ))
                ],
              ),
              const SizedBox(height: 8.0),
              const Text('FOOD DELIVERY')
            ],
          ),
          Positioned(
            bottom: 100.0,
            left: 55.0, 
            child: Column(
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      onPrimary: Colors.white
                    ),
                    onPressed: () => {},
                    child: const Text('Entrar',
                    style: TextStyle(
                      fontSize: 25.0
                    ),),
                
                  ),
                ),
                const SizedBox(height: 30.0),
                Container(
                  width: 300.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Theme.of(context).primaryColor
                    ),
                    onPressed: () => {},
                    child: const Text('Registrarse',
                    style: TextStyle(
                      fontSize: 25.0),
                  ),
                )
              )
              ],
            ),
          )
        ]
      ),
    );
  }
}
