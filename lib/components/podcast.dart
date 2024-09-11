import 'package:flutter/material.dart';
import 'package:pod_island/components/text.dart';

class Podcast extends StatelessWidget{
  const Podcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child:
    Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // 设置圆角半径
            child: Image.network(
              'https://imagev2.xmcdn.com/group5/M09/20/32/wKgDtlSpSc2x8bxOAAYpq5pgWnY340.jpg!op_type=3&columns=144&rows=144',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            )
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
            children: [
              Text('温情是爱恋', style: h2TextStyle,),
              Text('pod 音乐小巷'),
              Row(
                children: [
                  Icon(Icons.schedule, size: 16,),
                  SizedBox(width: 10,),
                  Text('17 mins remaining')
                ],
              )
            ],
          ),
        )],
    ),);
  }

}