import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return const MaterialApp(home: HomePagee());
  }
}

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  int count = 0;

  void Decrement() {
    setState(() {
      count--;
    });

    print(count);
  }

  void Increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpy => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? ' lotado' : 'Pode entrar !',
              style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              count.toString(),
              style: TextStyle(
                  fontSize: 100, color: isFull ? Colors.red : Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpy ? null : Decrement,
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor:
                          isEmpy ? Colors.white.withOpacity(0.2) : Colors.white,
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
                  onPressed: isFull ? null : Increment,
                  style: TextButton.styleFrom(
                      backgroundColor:
                          isFull ? Colors.white.withOpacity(0.2) : Colors.white,
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
