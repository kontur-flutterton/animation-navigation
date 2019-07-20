import 'package:flutter/material.dart';
import 'package:navigation2/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData.dark(),
      // home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Color(0xFFFDCB56),
              child: Text(
                'NEXT',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
