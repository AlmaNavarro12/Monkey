import 'package:cardscreen/pages/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Screen',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pago': (context) => SecondScreen(),
      }));
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _controller;
  var card = MaskTextInputFormatter(mask: '#### #### #### ####', filter: { "#": RegExp(r'[0-9]') }, type: MaskAutoCompletionType.lazy);
  var exp = MaskTextInputFormatter(mask: '##/## ', filter: { "#": RegExp(r'[0-9]') }, type: MaskAutoCompletionType.lazy);


  @override
  void initState() {
    //TODO: Sirve para recordar en que se queda el código
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  //Se sobre escibe un nuevo método
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma de pago'),
        backgroundColor: Colors.blueGrey,
        leading: const Icon(Icons.menu),
        elevation: 20.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.network("https://www.portafolio.co/files/article_multimedia/uploads/2021/11/26/61a159f3de66b.png", width: 300,),
              const SizedBox(
                height: 20,
              ),
              inputName(_controller),
              const SizedBox(
                height: 20,
              ),
              creditCardx(card),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: 
                    inputExp(exp)
                  ),
                  Container(
                     width: MediaQuery.of(context).size.width*0.5,
                    child: 
                    inputCvv()
                  )
                ]
              ),
              const SizedBox(
                height: 20,
              ),
              btnPagar(_controller)
            ],
          ),
        ),
      ),
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
      border: Border.all(color: Colors.blueGrey, width: 1.5),
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

Widget creditCardx(card) {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 10.0), //dentro del contenedor
    margin: const EdgeInsets.symmetric(horizontal: 30.0), //fuera del contenedor
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.blueGrey, width: 1.5),
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        card, 
        FilteringTextInputFormatter.allow(
          RegExp('[0-9 -]'), //Permitir solo los números del 0 al 9, el guión -
        ),
        LengthLimitingTextInputFormatter(20) //LImitar a 16 campos
      ],
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '0000 0000 0000 0000',
          hintStyle: TextStyle(color: Colors.black54)),
    ),
  );
}


Widget btnPagar(_controller) {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 20.0), //dentro del contenedor
    margin: const EdgeInsets.symmetric(horizontal: 30.0), //fuera del contenedor
    child: Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.pushNamed(context, '/pago');
          },
          child: const Text('PAGAR'),
        ),
      ],
    ),
  );
}

Widget inputExp(exp) {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 10.0), //dentro del contenedor
    margin: const EdgeInsets.symmetric(horizontal: 30.0), //fuera del contenedor
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.blueGrey, width: 1.5),
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        exp, 
        FilteringTextInputFormatter.allow(
          RegExp('[0-9 /]'), //Permitir solo los números del 0 al 9, el guión -
        ),
        LengthLimitingTextInputFormatter(5) //LImitar a 16 campos
      ],
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.timelapse),
          labelText: 'Expiración',
          hintText: '00/00',
          hintStyle: TextStyle(color: Colors.black54)),
    ),
  );
}

Widget inputCvv() {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 10.0), //dentro del contenedor
    margin: const EdgeInsets.symmetric(horizontal: 30.0), //fuera del contenedor
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.blueGrey, width: 1.5),
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp('[0-9]'), //Permitir solo los números del 0 al 9, el guión -
        ),
        LengthLimitingTextInputFormatter(3) //LImitar a 16 campos
      ],
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.verified_user),
          labelText: 'CVV',
          hintText: '000',
          hintStyle: TextStyle(color: Colors.black54)),
    ),
  );
}