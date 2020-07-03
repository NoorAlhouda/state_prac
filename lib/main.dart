import 'package:flutter/material.dart';
import 'package:flutterstatepractice/provide.dart';
import 'package:flutterstatepractice/second_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => ContColor(),
      child: MaterialApp(
        initialRoute: Home.id,
        routes: {
          Home.id: (context) => Home(),
          SecondPage.id: (context) => SecondPage(),
        },
      ),
    ));

class Home extends StatelessWidget {
  static String id = "Home";

  get color => Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firsy page'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'go second page',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, SecondPage.id);

            Provider.of<ContColor>(context, listen: false)
                .changeContainerColor(color);
          },
        ),
      ),
    );
  }
}
