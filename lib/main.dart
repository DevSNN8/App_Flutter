import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MoneyBox.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("call ini State");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MY account",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 207, 54, 54),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container());
  }
}
