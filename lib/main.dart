


import 'package:flutter/material.dart';

main() => runApp(const AppQuestions()); 

class AppQuestions extends StatefulWidget {
  const AppQuestions({super.key});

  @override
  State<AppQuestions> createState() => _AppQuestionsState();
}

class _AppQuestionsState extends State<AppQuestions> {
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
        body: Column(children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: const Text(
              'Adcionando um botão',
              style: TextStyle(fontSize: 18)
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: null, 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Press',
                style: TextStyle( 
                  color: Colors.black,
                  fontSize: 20,
                  ),
              )
              ),
          )
        ],),
      ),
    );
  }
}



