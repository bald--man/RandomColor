import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(RandomColor());
}

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  final String _title = 'Random Color';
  final String _bodyText = 'Hey there';
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            final random = Random();
            // Generate a random color.
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
          });
        },
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              _bodyText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
      ),
    ));
  }
}
