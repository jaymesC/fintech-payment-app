import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;

  const SizedText({required this.text, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text);
    return Container(
        child: Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: color, fontWeight: FontWeight.w700),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.clip,
        ),
      ],
    ));
  }

 Size  _textSize(String text) {
   // ignore: avoid_single_cascade_in_expression_statements
   final TextPainter textPainter = TextPainter(
     text: TextSpan(text: text, style:  TextStyle(
              fontSize: 16, color: color, fontWeight: FontWeight.w700) ),
              maxLines: 1,
              textDirection: TextDirection.ltr
   )..layout(minWidth: 0, maxWidth: double.infinity);

   return textPainter.size;
  }
}
