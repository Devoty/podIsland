import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageBar extends StatefulWidget{
  const  HomePageBar({super.key});

  @override
  State<StatefulWidget> createState() => HomePageBarState();

}

const String searchIcon = 'images/search.svg';

class HomePageBarState extends State<HomePageBar>{
  @override
  Widget build(BuildContext context) {
   return Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两端对齐
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
              children: [
                Text('Hey Devoty!', style: TextStyle(color: Colors.black, fontSize: 18),),
                // SizedBox(height: 10,),
                Text("Find this week's trending podcasts")
              ],
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // 圆形
                border: Border.all(
                  color: Colors.grey.shade300, // 边框颜色
                  width: 1.0, // 边框宽度
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  searchIcon,
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            )
          ],
        ));
  }

}