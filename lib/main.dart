import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pod_island/pages/home_page.dart';

import 'components/podcast.dart';
import 'components/bottom_bar.dart';
import 'components/home_page_bar.dart';
import 'components/text.dart';

void main() {
  runApp(const PodIslandApp());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pod island',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const PodIslandApp(),
    );
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
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: HomePage(),
              ),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }


}