import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarkVen Down',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
