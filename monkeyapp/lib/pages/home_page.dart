import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: AlignmentDirectional.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('lib/src/img/fondo.png'),
              opacity: 0.3
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget> [
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
        ),
      )
    );
  }
}
