import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: RouteManagers.routes,
      initialRoute: RouteName.kOnBoardingPage,
    );
  }
}
