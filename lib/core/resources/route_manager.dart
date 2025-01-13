import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/state/screen/state_page.dart';

class RouteManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteName.kOnBoardingPage: (context) => const OnBoardingPage(),
    RouteName.kHomePage: (context) =>  HomePage(),
    RouteName.kStatePage: (context) => StatePage(),
  };
}

class RouteName {
  static const String kOnBoardingPage = "on_boarding_page";
  static const String kHomePage = "home_page";
  static const String kStatePage = "state_page";
}
