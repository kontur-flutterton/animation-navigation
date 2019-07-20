import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimationsDemo',
      theme: ThemeData.dark(),
      home: BasicAnimations(),
    );
  }
}

class BasicAnimations extends StatefulWidget {
  @override
  _BasicAnimationsState createState() => _BasicAnimationsState();
}

class _BasicAnimationsState extends State<BasicAnimations>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _width;
  Animation _height;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this)
          ..addListener(() {
            setState(() {});
          });
    _width = Tween(begin: 200.0, end: 400.0)
        .animate(CurvedAnimation(curve: Curves.bounceOut, parent: _controller));

    _height = Tween(begin: 200.0, end: 400.0).animate(
        CurvedAnimation(curve: Interval(0.5, 1.0), parent: _controller));
  }

  void _startAnimation() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
      ),
      body: Center(
        child: Opacity(
          opacity: _controller.value,
          child: Container(
            color: Color(0xff3399cc),
            width: _width.value,
            height: _height.value,
          ),
        ),
      ),
    );
  }
}
