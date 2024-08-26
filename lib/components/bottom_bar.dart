import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

const String exploreIcon = 'images/explore.svg';


class BottomBar extends StatefulWidget{
  const BottomBar({super.key});

  @override
  State<StatefulWidget> createState() => BottomBarState();

}

class BottomBarState extends State<BottomBar>{
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(16.0),
      child: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.podcasts),
            title: const Text("podcasts"),
            selectedColor: Colors.purple,
          ),
          /// Search
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              exploreIcon,
              width: 30.0,
              height: 30.0,
            ),
            title: const Text("podcasts"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }

}