import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_auto_routing/screens/home_screen.dart';
import 'package:flutter_auto_routing/screens/second_screen.dart';
import 'package:flutter_auto_routing/screens/third_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeScreen, initial: true),
  CustomRoute(
    page: SecondScreen,
    transitionsBuilder: TransitionsBuilders.slideTop,
    durationInMilliseconds: 800,
  ),
  CustomRoute(
    page: ThirdScreen,
    transitionsBuilder: TransitionsBuilders.zoomIn,
    durationInMilliseconds: 800,
  )
])
class $MyRouter {}
