import 'package:flutter/material.dart';
import 'package:flutterstatepractice/provide.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  static String id = "SecondPage";

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<ContColor>(context).color;
    return Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: color,
          ),
        ));
  }
}
