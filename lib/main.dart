import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyShoppingPage(),
      ),
    );
  }
}

var menuButton = Center(
  child: Ink(
    decoration: const ShapeDecoration(
      color: Colors.grey,
      shape: CircleBorder(),
    ),
    child: IconButton(
      icon: Icon(Icons.menu_sharp),
      color: Colors.black,
      onPressed: () {},
    ),
  ),
);

class MyShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

var cartButton = Center(
  child: Ink(
    decoration: const ShapeDecoration(
      color: Colors.grey,
      shape: CircleBorder(),
    ),
    child: IconButton(
      icon: Icon(IconData(59870, fontFamily: 'MaterialIcons')),
      color: Colors.black,
      onPressed: () {},
    ),
  ),
);

var menuBar = Row(
  children: [
    menuButton,
    cartButton,
  ],
);

var menuBaar = Row(
  children: [
    Expanded(
        child: Row(children: [menuButton], textDirection: TextDirection.ltr)),
    Expanded(
        child: Row(children: [cartButton], textDirection: TextDirection.rtl)),
  ],
);

var shoesName = Text(
  "Space Shoes",
  style: TextStyle(fontFamily: 'Sora', fontSize: 36),
);

var shoesImage = Container(
  decoration: BoxDecoration(
      color: const Color.fromARGB(255, 232, 237, 243),
      image: const DecorationImage(
        image: NetworkImage(
            'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?cs=srgb&dl=pexels-melvin-buezo-2529148.jpg&fm=jpg'),
        fit: BoxFit.cover,
      ),
      border: Border.all(width: 1.0, color: Color.fromARGB(255, 232, 237, 243)),
      borderRadius: BorderRadius.circular(10)),
  width: 297,
  height: 288,
);
