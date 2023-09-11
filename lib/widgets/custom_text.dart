
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double sizeFont;
  const CustomText({Key? key, required this.text, required this.color, required this.sizeFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
          color: color, fontSize: sizeFont, fontWeight: FontWeight.bold),
    );
  }
}
