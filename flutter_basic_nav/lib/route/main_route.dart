

import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';
import 'package:flutter_basic_nav/screens/home_screen.dart';
import 'package:flutter_basic_nav/screens/log_in_screen.dart';
import 'package:flutter_basic_nav/screens/no_route_screen.dart';
import 'package:flutter_basic_nav/screens/tracking_screen.dart';

const String rootRoute = '/';
const String homeRoute = '/home';
const String detailRoute = '/detail';
const String trackingRoute = '/tracking';

Route<dynamic>? generateRoute(RouteSettings settings) {

  switch(settings.name) {
    case rootRoute:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case homeRoute:
      return MaterialPageRoute(builder: (_) => const HomeScreen()); 
    case detailRoute:
      final argument = settings.arguments as Map<String, dynamic>;
      if (argument.containsKey('name')) {
        return MaterialPageRoute(builder: (_) => DetailScreen(
          name: argument['name'], 
          age: argument['age'],
          updateName: argument['updateName'],
        ));
      }
      else {
        return _defaultRoute();
      }
    case trackingRoute:
      final argument = settings.arguments;
      if (argument == null) {
        return _defaultRoute();
      }
      else if (argument is String) {        
        return MaterialPageRoute(builder: (_) => TrackingScreen(
          name: argument,
        ));    
      }
      else {
        return _defaultRoute();
      }
    default:
      return _defaultRoute();
  }
}

Route<dynamic>? _defaultRoute() {
  return MaterialPageRoute(builder: (_) => const NoRouteScreen());
}
