import 'package:flutter/material.dart';

/// Flutter code sample for [Drawer].

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabar'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.car_crash),
            ),
            Tab(
              icon: Icon(Icons.add_a_photo),
            ),
            Tab(
              icon: Icon(Icons.cloud_upload),
            )
          ]),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Text('Location'),
          ),
          Center(
            child: Text('Photo'),
          ),
          Center(
            child: Text('Cloud'),
          ),
        ]),
      ),
    );
  }
}
