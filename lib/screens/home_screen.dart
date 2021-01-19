import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_routing/routes/my_router.gr.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).push(
                  Routes.secondScreen,
                  arguments: SecondScreenArguments(name: 'Mohamed Ali'),
                );
              },
              child: Text('go to second'),
            ),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).push(
                  Routes.thirdScreen,
                  arguments: ThirdScreenArguments(age: 20, club: 'Test'),
                );
              },
              child: Text('go to third'),
            ),
          ],
        ),
      ),
    );
  }
}
