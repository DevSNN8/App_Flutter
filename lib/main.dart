import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Toy fo man')),
        body: Center(
          child: smack(),
        ),
      ),
    );
  }
}

class smack extends StatefulWidget {
  const smack({super.key});

  @override
  State<smack> createState() => _smackState();
}

class _smackState extends State<smack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  print('Mom With friend');
                },
                child: Text('Pussy'))
          ],
        ),
      ),
    );
  }
}
