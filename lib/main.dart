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
  List<Foodmenu> menu = [
    Foodmenu("Pizza", "100"),
    Foodmenu("Salami", "30"),
    Foodmenu("peperoni", "25")
  ];

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
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext, int index) {
              Foodmenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 35),
                ),
                subtitle: Text("Price" + food.price + "dollar"),
              );
            }));
  }
}
