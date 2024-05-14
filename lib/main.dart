import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('My App'),
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.shop),
                  text: 'Shop',
                ),
                Tab(
                  icon: Icon(Icons.contact_mail),
                  text: 'Contact',
                )
              ]),
            ),
            body: TabBarView(children: [
              Myhome(),
              Icon(Icons.shop),
              Icon(Icons.contact_mail),
            ]),
          )),
    );
  }
}
