import 'package:contatos/components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: principal(),
    );
  }
}

class principal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Contatos",
            textDirection: TextDirection.ltr,
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.add_rounded),
                  onPressed: () {},
                ),
              ],
            )
          ]),
      body: ListView(
        children: [
          Contact("assets/eu.jpg", "Victor",
              "(11)932263964 - EU"),
          Contact("assets/lucasFoto.jpg", "Lucas", "(11)97593-2398 - Amigo"),
          Contact(
              "assets/nicolas.jpg", "Nicolas", "(11)65748-3329 - Melhor Amigo"),
          Contact("assets/kevin.jpg", "Kevin", "(11)89543-4373 - Amigo"),
          Contact("assets/aquino.jpg", "Aquino", "(11)13249-2436 - Amigo"),
          Contact("assets/karen.jpg", "Karen", "(12)73649-3298 - Irmã"),
        ],
      ),
    );
  }
}
