import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Pode entrar",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),
        ),
        Text("0" , 
        style: TextStyle(fontSize: 100 , color: ),
        )
      ],
    ));
  }
}
