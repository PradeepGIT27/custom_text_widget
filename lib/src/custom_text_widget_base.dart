import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String textValue;
  final double textSize;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextWidget(this.textValue, this.textSize, this.textColor,
      this.fontWeight, this.textAlign,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      textAlign: textAlign,
      textScaler: const TextScaler.linear(1.0),
      style: TextStyle(
          color: textColor, fontSize: textSize, fontWeight: fontWeight),
    );
  }
}
