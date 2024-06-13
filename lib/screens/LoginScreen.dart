import 'package:appprueba/main.dart';
import 'package:appprueba/screens/CuentaScreen.dart';
import 'package:appprueba/screens/RegistroScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

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
        title: const Text('Login'),
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
        Password(),
        BotonLogin(context),
        BotonRegistro(context) 
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
/*Widget Usuario(){
  return Container(
    padding: EdgeInsets.all(20.0),
    child: const TextField(
      controller: _correo,
      decoration: InputDecoration(
        hintText: "Ingrese su usuario",
        fillColor: Colors.grey,
        filled: true
      ),
    ),
  );
}*/

final TextEditingController _contrasenia = TextEditingController();
Widget Password(){
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: _contrasenia,
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
  return(FilledButton(
    onPressed: (){
      login(context);

    },
    child: Text("Login")));
}

Widget BotonRegistro(context){
  return(
    ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: (){
      Navigator.push(context,
       MaterialPageRoute(
        builder: (context) => const Registro()));
    },child: Text("Ir a Registro"))
  );
}

Future<void> login(context) async {
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _correo.text,
    password: _contrasenia.text
  );

  Navigator.push(context,
    MaterialPageRoute(
    builder: (context) => Cuenta())
    );

} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}