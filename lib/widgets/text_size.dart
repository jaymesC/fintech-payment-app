import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;

  const SizedText({required this.text, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size textSize = _textSize(text);
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

//  Size  _textSize() {
//    TextPainter(
//      text: 
//    )

//    return ();
//   }
}
