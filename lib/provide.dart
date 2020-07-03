import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class ContColor extends ChangeNotifier {
  var _color = Colors.deepPurple;

  get color => _color;

  changeContainerColor(var color) {
    _color = color;
    notifyListeners();
  }
}
