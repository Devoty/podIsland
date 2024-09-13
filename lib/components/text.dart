import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page_bar.dart';

// 定义一个全局的 TextStyle 变量
const TextStyle h1TextStyle = TextStyle(
  fontSize: 22.0, // 设置字体大小
  fontWeight: FontWeight.bold, // 设置字体粗细
);

const TextStyle h2TextStyle = TextStyle(
  fontSize: 20.0, // 设置字体大小
  color: Colors.black, // 设置字体颜色
);

SvgPicture icon38(String icon){
  return SvgPicture.asset(icon, width: 38.0, height: 38.0);
}