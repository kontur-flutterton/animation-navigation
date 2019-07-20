import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('OK'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
