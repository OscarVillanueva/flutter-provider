import 'package:flutter/material.dart';
import 'package:practice/homePage.dart';
import 'package:practice/providers/heroes.dart';
import 'package:practice/providers/villain.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(child: MaterialApp(home: HomePage()), providers: [
      ChangeNotifierProvider(create: (context) => Heroes()),
      ChangeNotifierProvider(create: (context) => Villain()),
    ]);
  }
}
