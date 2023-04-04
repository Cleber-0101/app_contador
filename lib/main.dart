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

  void Decrement() {
    print('decrement');
  }

  void Increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pode entrar",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "0",
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: Decrement,
                  child: const Text("saiu"),
                ),
                TextButton(
                  onPressed: Increment,
                  child: const Text("Entrou"),
                ),
              ],
            )
          ],
        ));
  }
}
