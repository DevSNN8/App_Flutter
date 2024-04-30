import 'package:flutter/material.dart';
import 'Foodmanu.dart';

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
  List<foodmenu> menu = [
    foodmenu("Seafood", "80000", "assets/images/pic1.jpg"),
    foodmenu("Beef", "75000", "assets/images/pic1.jpg"),
    foodmenu("Rice", "10000", "assets/images/pic1.jpg"),
    foodmenu("Noodle", "50000", "assets/images/pic1.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Chosee Manu",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              foodmenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text("price" + food.price + "KIP"),
              );
            }));
  }
}
