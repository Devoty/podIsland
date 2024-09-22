import 'package:flutter/material.dart';
import 'package:pod_island/components/text.dart';

import '../consts.dart';
import 'images.dart';

class Episode extends StatelessWidget{
  const Episode({super.key});

  final String url = "https://imagev2.xmcdn.com/group5/M09/20/32/wKgDtlSpSc2x8bxOAAYpq5pgWnY340.jpg!op_type=3&columns=144&rows=144";
  final String title = "温情是爱恋，温情是爱恋温情是爱恋";
  final String pod = "音乐小巷 | 17mim";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      child:
      Row(
        children: [
          SmallImage(url: url),
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start, // 两端对齐
              children: [
                TextH1(title),
                Text(pod),

                 Row(
                  children: [
                    Container(
                      width: 110,
                      height: 45,
                      padding: const EdgeInsets.only(top: 5.0),
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(bluePurpleColor),
                        ),
                        icon: icon24(playIcon),
                        label:const Text("play",
                            style :  TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    icon30(folderIcon),
                    icon30(downloadIcon),
                    icon30(dotmenuIcon)
                  ],
                ),
              ],
            ),
          )],
      ),);
  }
}

class TrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF865DFF) // 设置颜色为绿色
      ..style = PaintingStyle.fill; // 填充形状

    // 创建一个圆角矩形（跑道形）
    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(size.height / 2), // 圆角半径等于高度的一半，确保两端是半圆
    );

    // 绘制圆角矩形（跑道形）
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}