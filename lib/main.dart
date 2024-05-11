import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game shop",
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
          "Press Button add?",
          style: TextStyle(fontSize: 30, color: Colors.red),
        )),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
          onPressed: () {},
          label: const Text('Edit', style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.edit, color: Colors.white, size: 25),
        ));
  }
}
