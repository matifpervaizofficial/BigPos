// ignore_for_file: prefer_const_constructors

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Pricefilter extends StatefulWidget {
  @override
  State<Pricefilter> createState() => _PricefilterState();
}

class _PricefilterState extends State<Pricefilter> {
  var selectedRange = RangeValues(5, 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: appcolors.background, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
          RangeSlider(
            inactiveColor: appcolors.greyText,
            activeColor: appcolors.gradientGreen,
            values: selectedRange,
            onChanged: (RangeValues newRange) {
              setState(() {
                selectedRange = newRange;
              });
            },
            divisions: 100,
            min: 0.0,
            max: 1000,
            labels: RangeLabels(
              "${selectedRange.start}\$",
              "${selectedRange.end}\$",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("0\$"),
              Text("1000\$"),
            ],
          ).pSymmetric(h: 10, v: 5)
        ],
      ),
    );
  }
}
