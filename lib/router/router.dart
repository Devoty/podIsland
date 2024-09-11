

import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/podcasts.dart';

class RouteManager {
  static const String home = '/';
  static const String details = '/details';
  static const String setting = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => PodIslandApp());
      case details:
        return MaterialPageRoute(builder: (_) => PodCastsDetailPage());
      default:
        return MaterialPageRoute(builder: (_) => PodIslandApp());
    }
  }
}