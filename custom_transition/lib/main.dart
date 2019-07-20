import 'package:custom_transition/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _spinNext() {
    Navigator.push(context, SpinPageRoute(Second()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spin Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _spinNext,
              child: Text('Каак?'),
            ),
          ],
        ),
      ),
    );
  }
}

class SpinPageRoute extends PageRouteBuilder {
  SpinPageRoute(Widget screenWidget)
      : super(pageBuilder: (context, animation, secondaryAnimation) {
          return screenWidget;
        }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return RotationTransition(
            turns: Tween(begin: 0.0, end: 20.0).animate(animation),
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        });
}
