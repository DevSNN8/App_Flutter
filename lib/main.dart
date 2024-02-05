import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Myhomepage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Choose MeNu",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 66, 83, 208),
                  borderRadius: BorderRadius.circular(20)),
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 114, 47),
                  borderRadius: BorderRadius.circular(20)),
              height: 80,
            )
          ],
        ));
  }
}
