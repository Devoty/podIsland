import 'package:flutter/material.dart';
import 'package:pod_island/components/text.dart';

class Podcasts extends StatelessWidget{
  const Podcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),

      child:
      Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), // 设置圆角半径
              child: Image.network(
                'https://imagev2.xmcdn.com/group6/M0A/1A/69/wKgDg1TXZsqiRZ_fAA1UuaS0S-4924.jpg!op_type=3&columns=144&rows=144',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              )
          ),
          ClipRRect(
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)), // 设置圆角半径
            child:  SizedBox(
              width: 180,
              height: 120,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey.shade200,
                child: const Column(

                  crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
                  children: [
                    Text('音乐小巷', style: h2TextStyle,),
                    SizedBox(height: 10,),
                    Text(
                      '顾城有诗，“小巷，又弯又长，没有门，没有窗，我拿把旧钥匙，敲着厚厚的墙。”今天，我在音乐小巷里，欢迎你来敲墙。',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // 超出部分省略号显示
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),


    );

  }

}