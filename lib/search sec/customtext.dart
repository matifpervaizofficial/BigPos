import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textitem;
  final Color textColor;
  final double textSize;
  const CustomText({
    Key? key,
    required this.textitem,
    required this.textColor,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textitem,
      style: TextStyle(color: textColor, fontSize: textSize),
    );
  }
}
