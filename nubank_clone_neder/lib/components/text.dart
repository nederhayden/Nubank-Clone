import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final fontWeight;

  const TextCustom(
      {Key key, this.text, this.color, this.fontSize, this.fontWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
