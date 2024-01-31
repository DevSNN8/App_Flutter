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
        child: ListView(
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Icon(Icons.access_alarm),
      ),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text("List ${i + 1}"));
    }
  }
}
