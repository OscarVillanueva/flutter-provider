import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Villain with ChangeNotifier {
  String _villain = "Joker";
  Color color = Colors.blue;

  String get villain => _villain;

  set villain(String value) {
    _villain = value;

    this.color = value == "Joker" ? Colors.blue : Colors.teal;

    // Indicar al provider que cambio
    notifyListeners();
  }
}
