// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildBusinessCard extends StatelessWidget {
  const BuildBusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 640,
        color: appcolors.Primarycolor,
        child: Column(
          children: [
            TabBarView(
              children: [
                Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/user.jpg"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
