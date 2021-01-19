import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;

  SecondScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'second screen',
        ),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
