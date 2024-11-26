import 'package:custom_text_widget/text_widget.dart';
import 'package:flutter/material.dart';

class SampleCustomText extends StatelessWidget {
  const SampleCustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWidget(
        "Example", 20.0, Colors.black54, FontWeight.w500, TextAlign.center);
  }
}
