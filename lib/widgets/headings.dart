import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const Headings({
    Key? key,required this.text, this.textStyle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}