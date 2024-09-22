import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextH1 extends StatelessWidget{
  const TextH1(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return
      Text(
          text,
          style: h2TextStyle);
  }
}
const TextStyle h1TextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const TextStyle h2TextStyle = TextStyle(
  fontSize: 16.0, // 设置字体大小
);

SvgPicture icon38(String icon){
  return SvgPicture.asset(icon, width: 38.0, height: 38.0);
}

SvgPicture icon24(String icon){
  return SvgPicture.asset(icon, width: 24.0, height: 24.0);
}

SvgPicture icon30(String icon){
  return SvgPicture.asset(icon, width: 30.0, height: 30.0);
}