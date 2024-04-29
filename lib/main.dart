import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "mark", home: myhomepage());
    ;
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("Press Add $i"));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Prgram"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
