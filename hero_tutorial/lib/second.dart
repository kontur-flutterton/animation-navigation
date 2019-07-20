import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Home'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'tag-1',
              child: Container(
                  width: 400.0, height: 400.0, color: Color(0xffE42832)),
            ),
          ),
        ],
      )),
    );
  }
}
