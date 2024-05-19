import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My app", home: HomeScreen(), theme: ThemeData.dark());
  }
}
