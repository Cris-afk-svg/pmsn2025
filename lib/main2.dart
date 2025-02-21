import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          contador++;
          print(contador);
          setState(() {
            contador;
          });
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:
                Color(0xffb74093), // Corrected the Color constructor
            title: const Center(
              child: Text('Hola Mundo :)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Popins',
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              child: Image.network(
                  'https://sg.com.mx/sites/default/files/2018-04/LogoITCelaya.png'),
              onPressed: () {
                contador++;
                print('hola $contador');
                setState(() {
                  contador;
                });
              }),
          body: Center(
              child: Text('Valor del contador $contador',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20.0,
                  ))),
        ),
      ),
    );
  }
}
