import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Heroes with ChangeNotifier {
  String _hero = "Batman";
  Color color = Colors.blue;

  String get hero => _hero;

  set hero(String value) {
    _hero = value;

    this.color = value == "Batman" ? Colors.blue : Colors.teal;

    // Indicar al provider que cambio
    notifyListeners();
  }
}
