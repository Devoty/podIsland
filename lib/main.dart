import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pod_island/pages/home_page.dart';
import 'package:pod_island/router/router.dart';
import 'package:pod_island/util/http_overrides.dart';

void main() {
  HttpOverrides.global = HttpOverride();
  runApp(const PodIslandApp());
}

class PodIslandApp extends StatelessWidget {
  const PodIslandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteManager.generateRoute,
      home: HomePage(),
    );
  }
}
