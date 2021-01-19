import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final int age;
  final String club;

  ThirdScreen({
    @required this.age,
    @required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$age'),
            SizedBox(
              height: 20,
            ),
            Text(club),
          ],
        ),
      ),
    );
  }
}
