import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/providers/heroes.dart';
import 'package:practice/providers/villain.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instancia
    final hero = Provider.of<Heroes>(context);
    final villain = Provider.of<Villain>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Prueba - Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            hero.hero,
            style: TextStyle(color: hero.color, fontSize: 30.0),
          ),
          Text(
            villain.villain,
            style: TextStyle(color: villain.color, fontSize: 30.0),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              child: Icon(Icons.access_alarm),
              backgroundColor: Colors.amber,
              onPressed: () {
                hero.hero = "Batman";
                villain.villain = "Joker";
              }),
          SizedBox(height: 20),
          FloatingActionButton(
              child: Icon(Icons.ac_unit),
              backgroundColor: Colors.deepPurple,
              onPressed: () {
                hero.hero = "Thor";
                villain.villain = "Loki";
              })
        ],
      ),
    );
  }
}
