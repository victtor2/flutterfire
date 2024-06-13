import 'package:appprueba/main.dart';
import 'package:appprueba/screens/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
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
        campoCompra()
      ],
    )
  );
}

final TextEditingController _compra = TextEditingController();
Widget campoCompra(){
  return(TextField(
    controller: _compra,
    decoration: const InputDecoration(
      hintText: "Ingrese valor de la compra",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}

final TextEditingController _impuesto = TextEditingController();
Widget campoImpuesto(){
  return(TextField(
    controller: _impuesto,
    decoration: const InputDecoration(
      hintText: "Ingrese valor de Impuesto",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}

final TextEditingController _saldo = TextEditingController();
Widget campoSAldo(){
  return(TextField(
    controller: _saldo,
    decoration: const InputDecoration(
      hintText: "Saldito",
      fillColor: Colors.grey,
        filled: true
    ),
  ));
}

Widget BotonLogin(context){
  return(FilledButton(
    onPressed: (){
      login(context);

    },
    child: Text("Login")));
}

Widget BotonGuardar(context){
  return(
    ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: (){
      guardar();
    },child: Text("Ir a Registro"))
  );
}

Future<void> guardarcontext) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

await ref.set({
  "name": "John",
  "age": 18,
  "address": {
    "line1": "100 Mountain View"
  }
});
}
