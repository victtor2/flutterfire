import 'package:appprueba/screens/CuentaScreen.dart';
import 'package:appprueba/screens/LoginScreen.dart';
import 'package:appprueba/screens/RegistroScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        
  runApp(Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

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
        title: const Text('Title'),
      ),
      body: Body(context),
    );
  }
}

Widget Body(context){
  return(
    Column(
      children: <Widget>[
        Text("Victor Garzon"),
        Text("victtor2"),
        BotonLogin(context)
      ],
    )
  );
}

Widget BotonLogin(context){
  return(
    FilledButton(onPressed: (){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const Login())
      );
    }, child:Text("Ir a Login"))
  );
}

/*


Widget BotonCuenta(context){
  return(
    ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: (){
      Navigator.push(context,
       MaterialPageRoute(
        builder: (context) => const Cuenta()));
    },child: Text("Ir a Formulario"))

  );
}*/