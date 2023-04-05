import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(home: HomePage());
  }
}

class HomePagee extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const HomePagee({super.key, Key? Key});

  @override
  _HomePageeState createState() => _HomePageeState();
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int count = 0;

  void Decrement() {
    count--;
    print(count);
  }

  void Increment() {
    count++;
    print(count);
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
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 60, color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: Decrement,
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: const Text(
                    "saiu",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: Increment,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: const Text(
                    "Entrou",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
