import 'package:flutter/material.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';

class Pricerangcategories extends StatelessWidget {
  final String catname;
  const Pricerangcategories({
    Key? key,
    required this.catname,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        catname,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: appcolors.gradientGreen),
      ),
    );
  }
}
