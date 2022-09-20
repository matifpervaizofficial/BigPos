// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigposweb/Accounts/changepass.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../custombutton.dart';
import '../search sec/customtext.dart';

class ChangeUsername extends StatefulWidget {
  const ChangeUsername({super.key});

  @override
  State<ChangeUsername> createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 750,
        width: 700,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    textitem: "Settings",
                    textColor: appcolors.black,
                    textSize: 20),
                SizedBox(
                  height: 40,
                ),
                CustomText(
                    textitem: "Menu bar",
                    textColor: appcolors.black,
                    textSize: 20),
                SizedBox(
                  height: 40,
                ),
                CustomText(
                    textitem:
                        "Note: A username is unique, This is how users identify you, a change may lead to a loss of credit",
                    textColor: appcolors.black,
                    textSize: 12),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Current Username",
                        style: TextStyle(
                            fontSize: 20,
                            color: appcolors.black,
                            fontWeight: FontWeight.bold),
                      ).pOnly(top: 30),
                      CustomText(
                              textitem: "johndoe",
                              textColor: appcolors.black,
                              textSize: 13)
                          .pOnly(top: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                                  textitem: "New Email",
                                  textColor: appcolors.black,
                                  textSize: 14)
                              .pOnly(bottom: 10),
                          CustomTextformfield(hinttext: "johndoe")
                        ],
                      ).pOnly(top: 20),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: 40,
                width: 150,
                child: CustomButton(
                  onTap: () {},
                  buttonText: "Change Username",
                  borderColor: appcolors.gradientGreen,
                  buttonColor: appcolors.gradientGreen,
                  textColor: appcolors.white,
                  borderRadius: 10,
                ),
              ),
            ]).pOnly(top: 20, right: 20)
          ],
        ).p(20),
      ),
    );
  }
}
