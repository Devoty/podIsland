
import 'package:flutter/material.dart';

///size : 80 * 80
// circular : 20
class SmallImage extends StatelessWidget{
  const SmallImage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Image.network(url, width: 100, height: 100),
    );
  }

}

