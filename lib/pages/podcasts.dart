import 'package:flutter/material.dart';

import '../components/podcasts.dart';

class PodCastsDetailPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              scrollDirection : Axis.vertical,
              child: Column(
                children: [
                  Stack(

                    children: [
                      // Image.network(
                      //     'https://imagev2.xmcdn.com/group5/M09/20/32/wKgDtlSpSc2x8bxOAAYpq5pgWnY340.jpg!op_type=3&columns=144&rows=144',
                      //     width: double.infinity,
                      //     height: 280,
                      //     fit: BoxFit.cover,
                      //     alignment : Alignment.bottomRight
                      // ),
                      // Positioned(
                      //   top: 230,  // 根据需求调整按钮位置
                      //   left: 10, // 根据需求调整按钮位置
                      //   child:  Image.network(
                      //       'https://imagev2.xmcdn.com/group5/M09/20/32/wKgDtlSpSc2x8bxOAAYpq5pgWnY340.jpg!op_type=3&columns=144&rows=144',
                      //       width: 80,
                      //       height: 80,
                      //       fit: BoxFit.cover,
                      //       alignment : Alignment.bottomRight
                      //   ),
                      //   ),


                    ]
                  ),



                ],
              ),

            ),
          ),
          // 悬浮的返回按钮
          Positioned(
            top: 40,  // 根据需求调整按钮位置
            left: 10, // 根据需求调整按钮位置
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 30),
              onPressed: () {
                // 返回上一个页面
                Navigator.pop(context);
              },
            ),
          ),
        ],
      )


    );
  }
}