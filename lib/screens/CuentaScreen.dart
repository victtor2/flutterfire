import 'package:appprueba/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(Cuenta());
}

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

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
        title: const Text('Cuenta'),
      ),
      body: Body(),
    );
  }
}

Widget Body(){
  return(
    Column(
      children: <Widget>[
        
      ],
    )
  );
}