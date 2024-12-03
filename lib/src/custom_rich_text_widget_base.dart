import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final List<InlineSpan> textSpanList;

  const RichTextWidget({required this.textSpanList, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: textSpanList,
    ));
  }
}

TextSpan richTextSpan({
  required String text,
  bool underLine = false,
  double? size,
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily,
  TextAlign? textAlign,
  Color? underlineColor,
  GestureRecognizer? recognizer,
}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      fontFamily: fontFamily,
      color: color ?? Colors.black,
      fontSize: size ?? 8.0,
      fontWeight: fontWeight ?? FontWeight.w500,
      decoration: (underLine) ? TextDecoration.underline : TextDecoration.none,
      decorationColor: (underLine) ? underlineColor : null,
      decorationThickness: (underLine) ? 1.0 : null,
    ),
    recognizer: recognizer,
  );
}
