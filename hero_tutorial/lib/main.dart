import 'package:flutter/material.dart';
import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Heroes', theme: ThemeData.dark(), routes: {
      '/': (context) => DefaultScaffold(),
      '/second': (context) => Second()
    });
  }
}

class DefaultScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heroes'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [StartWidget()]),
        ),
      ),
    );
  }
}

class StartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
        child: Hero(
            tag: 'tag-1',
            flightShuttleBuilder: (context, animation, direction, from, to) {
              return RotationTransition(
                turns: Tween(begin: 0.0, end: 20.0).animate(animation),
                child: to.widget,
              );
            },
            child: Container(
                width: 100.0, height: 100.0, color: Color(0xff3399cc))));
  }
}
