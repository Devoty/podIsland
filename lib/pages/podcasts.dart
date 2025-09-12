import 'package:flutter/material.dart';

import '../components/text.dart';

class PodCastsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              // 头部图片
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      // decoration: BoxDecoration(
                      //   color: Colors.blue, // 外框颜色
                      //   shape: BoxShape.rectangle, // 外框形状
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                      // width: 100,
                      height: 320,
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/04b7/8fe3/4750db0af2235899c880a8c332aab16e?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SrsWSkbCXeUq-PQslOFKeLPU7fmW45gOoqqmFPjGJ47zRwmha4MKujTi7ncmtEchTf7cH6vS-Ta~EO~CTQ9UREL4~N24piYpnhFRDW57fWAEDT3o-kzphwU6Zj9sxwB6gZqO5D4NykAYzCK1j9fLzn-UYsv2Do8HXNipvetOVBIsDu55lT90anDPuhIOheajZkx7JYynCSkxSgs6lX4eAr-Q3LhdAjwoBFrhsQJrpm70NuWXXv9kh~q6FSJmMeeKtTBb5ac~1jKmJqXhUpnY3~97w2pVHppBRtANuRWXgeYeQou7VII5SpWypTsveny~~pp5sN24l0bd-E-INqwEOw__',
                      ),
                    ),
                    Positioned(
                        top: 160, // 调整前景图片的位置
                        child: Container(
                            padding: EdgeInsets.all(5), // 设置外框的宽度
                            decoration: BoxDecoration(
                              color: Colors.white, // 外框颜色
                              shape: BoxShape.rectangle, // 外框形状
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                'https://s3-alpha-sig.figma.com/img/04b7/8fe3/4750db0af2235899c880a8c332aab16e?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SrsWSkbCXeUq-PQslOFKeLPU7fmW45gOoqqmFPjGJ47zRwmha4MKujTi7ncmtEchTf7cH6vS-Ta~EO~CTQ9UREL4~N24piYpnhFRDW57fWAEDT3o-kzphwU6Zj9sxwB6gZqO5D4NykAYzCK1j9fLzn-UYsv2Do8HXNipvetOVBIsDu55lT90anDPuhIOheajZkx7JYynCSkxSgs6lX4eAr-Q3LhdAjwoBFrhsQJrpm70NuWXXv9kh~q6FSJmMeeKtTBb5ac~1jKmJqXhUpnY3~97w2pVHppBRtANuRWXgeYeQou7VII5SpWypTsveny~~pp5sN24l0bd-E-INqwEOw__',
                                // 前景图片
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ))),
                  ],
                ),
              ),

              const SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      TextH1("音乐小巷"),
                      TextDesc("顾城有诗，“小巷，又弯又长，没有门，没有窗，我拿把旧钥匙，敲着厚厚的墙。”今天，我在音乐小巷里，欢迎你来敲墙。"),
                    ],
                  )),

              Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center, // 将子元素和分割线居中
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min, // 让 Row 只占用其内容所需的最小宽度
                  children: [
                    Container(
                      child: Column(
                        children: [
                          TextH1("12K"),
                          TextDesc("Followers"),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color:Colors.red, // 分割线颜色
                      width: 50, // 分割线与子元素之间的间距
                      thickness: 1, // 分割线厚度
                    ),
                    Container(
                      child: Column(
                        children: [
                          TextH1("12"),
                          TextDesc("Episodes"),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.red, // 分割线颜色
                      width: 50, // 分割线与子元素之间的间距
                      thickness: 2, // 分割线厚度
                    ),
                    Container(
                      child: Column(
                        children: [
                          TextH1("12M"),
                          TextDesc("Listeners"),
                        ],
                      ),
                    )
                  ],
                ),
              )






            ]),
          ),
        ),
        // 悬浮的返回按钮
        Positioned(
          top: 40, // 根据需求调整按钮位置
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
    ));
  }
}
