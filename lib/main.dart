import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pod_island/pages/home_page.dart';
import 'package:pod_island/router/router.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const PodIslandApp());
}


/// 在 Dart 中可以使用以下代码来忽略证书验证：
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class PodIslandApp extends StatefulWidget {
  const PodIslandApp({super.key});
  @override
  PodIslandAppState createState() => PodIslandAppState();
}


class PodIslandAppState extends State<PodIslandApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteManager.generateRoute,
      home: HomePage(),
    );
  }


}