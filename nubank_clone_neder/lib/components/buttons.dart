import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  final String text;
  final onPressed;

  const ButtonOutline({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(text),
      textColor: Colors.white,
      borderSide: BorderSide(color: Colors.white),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    );
  }
}
