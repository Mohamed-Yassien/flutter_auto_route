import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_routing/routes/my_router.gr.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder<MyRouter>(
        router: MyRouter(),
        initialRoute: Routes.homeScreen,
        navigatorKey: GlobalKey<NavigatorState>(),
      ),
    );
  }
}
