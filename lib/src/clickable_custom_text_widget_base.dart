import 'package:flutter/material.dart';

class ClickableTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? softWrap;
  final TextScaler? textScaler;
  final int? maxLines;
  final Color? selectionColor;
  final TextOverflow? overflow;
  final bool underLine;
  final Color? underlineColor;
  final GestureTapCallback? onTap;

  const ClickableTextWidget(
      {required this.text,
      required this.onTap,
      this.size = 8.0,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.center,
      this.maxLines,
      this.selectionColor,
      this.fontFamily,
      /*If softWrap false, the glyphs in the text will be positioned as if there was unlimited horizontal space.*/
      this.softWrap = true,
      /*Text Direction ltr -> left to right (e.g., English, French) , rtl -> right to left (e.g. Arabic, Hebrew)*/
      this.textDirection = TextDirection.ltr,
      /*The scale function computes the scaled font size given the original unscaled font size specified by app developers.*/
      this.textScaler = const TextScaler.linear(1.5),
      /*TextOverflow.ellipsis(type) -> Dotted flow; Please check flutter document for more types.*/
      this.overflow,
      this.underLine = false,
      this.underlineColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign,
        textDirection: textDirection,
        softWrap: softWrap,
        textScaler: textScaler,
        maxLines: maxLines,
        selectionColor: selectionColor,
        overflow: overflow,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          decoration: (underLine) ? TextDecoration.underline : null,
          decorationColor: (underLine) ? underlineColor : null,
          decorationThickness: (underLine) ? 1.0 : null,
        ),
      ),
    );
  }
}
