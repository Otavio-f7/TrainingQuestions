


import 'package:flutter/material.dart';

main() => runApp(const AppQuestions()); 

class AppQuestions extends StatefulWidget {
  const AppQuestions({super.key});

  @override
  State<AppQuestions> createState() => _AppQuestionsState();
}

class _AppQuestionsState extends State<AppQuestions> {

  var n1 = TextEditingController();
  var n2 = TextEditingController();
  String num = '0';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ( const Text(
            'Calculadora',
            )),
          backgroundColor: Colors.black,
          centerTitle: true, 
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                 )
              ),
              child: Column(
                children: [
                  TextField(
                    controller: n1,
                    decoration: const InputDecoration(
                      labelText: ' Primeiro Numero'),
                    ),
                  TextField(
                    controller: n2,
                    decoration: const InputDecoration(
                      labelText: ' Segundo Numero'),
                    ),
                  ElevatedButton(
                    onPressed: () { 
                      setState(() {
                       num = (n1.text + n2.text).toString();
                      });
                    }, 
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text('Soma',
                      style: TextStyle( 
                        color: Colors.black,
                        fontSize: 20,
                        ),
                    )
                    ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Resultado(num),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}


class Resultado extends StatelessWidget {
  late String numero;
  Resultado(this.numero, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('O resultado é : $numero');
  }
}



