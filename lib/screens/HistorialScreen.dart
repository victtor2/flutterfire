import 'package:appprueba/main.dart';
import 'package:appprueba/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Historial());
}

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
      ),
      body: Cuerpo(),
    );
  }
}

Widget Cuerpo(){
  return(
    Column(
      children: <Widget>[

      ],
    )
  );
}

final TextEditingController _correo = TextEditingController();
Widget campo(){
  return(TextField(
    controller: _correo,
    decoration: const InputDecoration(
      hintText: "Ingrese su Usuario",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}