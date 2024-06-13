import 'package:appprueba/main.dart';
import 'package:appprueba/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Registro());
}

class Registro extends StatelessWidget {
  const Registro({super.key});

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
        title: const Text('Registro'),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo(context){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://images8.alphacoders.com/133/thumb-1920-1336828.png"),
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [     
        campoUsuario(),
        campoNickname(),
        campoPassword(),
        BotonLogin(context) 
      ],
    ),
  );
}

final TextEditingController _correo = TextEditingController();
Widget campoUsuario(){
  return(TextField(
    controller: _correo,
    decoration: const InputDecoration(
      hintText: "Ingrese su Usuario",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}

final TextEditingController _nickname = TextEditingController();
Widget campoNickname(){
  return(TextField(
    controller: _nickname,
    decoration: const InputDecoration(
      hintText: "Ingrese su Usuario",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}

final TextEditingController _controller = TextEditingController();
Widget campoPassword(){
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: _controller,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Ingrese su usuario",
            fillColor: Colors.grey,
            filled: true
          ),
        ), 
      ),
    ],
  );
}

Widget BotonLogin(context){
  return(
    ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: (){
      Navigator.push(context,
       MaterialPageRoute(
        builder: (context) => const Login()));
    },child: Text("Ir a Login"))
  );
}