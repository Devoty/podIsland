import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pod_island/components/text.dart';

import '../router/router.dart';
import '../rss/rss_parser.dart';

class HomePageBar extends StatefulWidget{
  const  HomePageBar({super.key});

  @override
  State<StatefulWidget> createState() => HomePageBarState();

}

const String searchIcon = 'assets/icon/plus_icon.svg';

class HomePageBarState extends State<HomePageBar>{
  @override
  Widget build(BuildContext context) {
   return Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两端对齐
          children: [
            Row(
              children: [
                Image.asset('assets/adventurer/adventurer_default.png', width: 50, height: 50,),
                const SizedBox(width: 20,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
                  children: [
                    Text('Good Morning 👋', style: TextStyle(color: Colors.black, fontSize: 18),),
                    Text("Devoty !")
                  ],
                ),
              ],
            ),

            GestureDetector(
              onTap: () {_showSimpleDialog(context);},
              child: icon38(searchIcon)
            ),

          ],
        ));
  }
}

void _showSimpleDialog(BuildContext context) {

  final controller = TextEditingController();
  controller.text = "https://techfusionfm.com/podcast.xml";

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('播客RSS URL'),
        content: TextField(
          controller: controller,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('确定'),
            onPressed: () {

              parse(controller.text);

              Navigator.of(context).pop();
              // 使用Navigator.push跳转到新页面
              // RouteManager.generateRoute(RouteSettings(name :"/details" ));
              Navigator.push(context, RouteManager.generateRoute(RouteSettings(name :"/details" )));
            },
          ),
        ],
      );
    },
  );
}