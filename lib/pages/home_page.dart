import 'package:flutter/material.dart';

import '../components/bottom_bar.dart';
import '../components/podcast.dart';
import '../components/home_page_bar.dart';
import '../components/podcasts.dart';
import '../components/text.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: HomePage1(),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}


class HomePage1 extends StatefulWidget{
  const HomePage1({super.key});

  @override
  State<StatefulWidget> createState() => HomePage1State();

}

class HomePage1State extends State<HomePage1>{
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const HomePageBar(),
      Expanded(
        flex: 2,
        child : Container(
          padding: const EdgeInsets.all(16.0),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
                children: [
                  Text('Recently Played', style: h1TextStyle,),
                  Podcast(),
                  Podcast(),
                ]
            ),
        ),
      ),
      Expanded(
        flex: 3,
        child : Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
              children: [
                Text('Popular Podcasts', style: h1TextStyle,),
                SingleChildScrollView(
                  scrollDirection : Axis.horizontal,
                  child: Row(
                    children: [
                      Podcasts(),
                      Podcasts(),
                      Podcasts(),
                    ],
                  ),
                )

                ]
            ),
          ),

      )
    ],);
  }

}

