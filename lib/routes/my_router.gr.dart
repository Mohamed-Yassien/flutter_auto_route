// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String secondScreen = '/second-screen';
  static const String thirdScreen = '/third-screen';
  static const all = <String>{
    homeScreen,
    secondScreen,
    thirdScreen,
  };
}

class MyRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.secondScreen, page: SecondScreen),
    RouteDef(Routes.thirdScreen, page: ThirdScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    SecondScreen: (data) {
      final args = data.getArgs<SecondScreenArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SecondScreen(args.name),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideTop,
        transitionDuration: const Duration(milliseconds: 800),
      );
    },
    ThirdScreen: (data) {
      final args = data.getArgs<ThirdScreenArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ThirdScreen(
          age: args.age,
          club: args.club,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.zoomIn,
        transitionDuration: const Duration(milliseconds: 800),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SecondScreen arguments holder class
class SecondScreenArguments {
  final String name;
  SecondScreenArguments({@required this.name});
}

/// ThirdScreen arguments holder class
class ThirdScreenArguments {
  final int age;
  final String club;
  ThirdScreenArguments({@required this.age, @required this.club});
}
