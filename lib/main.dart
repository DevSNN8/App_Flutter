import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello flutter",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Press"),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Icon(Icons.access_alarm),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
