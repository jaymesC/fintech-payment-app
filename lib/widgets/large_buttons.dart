import 'dart:html';

import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;

  const AppLargeButton(
      {Key? key,
      required this.text,
      this.backgroundColor = AppColor.mainColor,
      this.textColor,
      this.onTap,
      this.isBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: AppColor.mainColor)),
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 50, color: textColor)),
      ),
    );
  }
}
