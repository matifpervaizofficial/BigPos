import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;

  Color? buttonColor;

  double? borderRadius;

  Color? textColor;

  String buttonText;

  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.21,
      height: 44,
      decoration: BoxDecoration(
          color: buttonColor ?? appcolors.gradientGreen,
          border: Border.all(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: textColor, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
