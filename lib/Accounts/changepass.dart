// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bigposweb/search%20sec/customtext.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';

import '../custombutton.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 750,
        width: 700,
        color: appcolors.background,
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
                        textitem: "Current Password",
                        textColor: appcolors.greyText,
                        textSize: 14)
                    .pOnly(bottom: 10),
                CustomTextformfield(
                  hinttext: "Enter current password",
                ),
                CustomText(
                        textitem: "New Password",
                        textColor: appcolors.greyText,
                        textSize: 14)
                    .pOnly(bottom: 10, top: 5),
                CustomTextformfield(
                  hinttext: "Enter New Password",
                ),
                CustomText(
                        textitem: "Retype New Password",
                        textColor: appcolors.greyText,
                        textSize: 14)
                    .pOnly(bottom: 10, top: 5),
                CustomTextformfield(
                  hinttext: "Retype New Password",
                ),
                CustomText(
                        textitem: "Password Requirements:",
                        textColor: appcolors.black,
                        textSize: 14)
                    .pOnly(top: 40, bottom: 10),
                PersonalRequirementsSec(
                        text:
                            "Minimum 6 characters long - the more, the better")
                    .pOnly(bottom: 5),
                PersonalRequirementsSec(
                        text: "Use a combination of letters - A-Z, a-z")
                    .pOnly(bottom: 5),
                PersonalRequirementsSec(
                    text: "Use a combination of numbers - 0-9")
              ],
            ).p(30),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: 40,
                width: 150,
                child: CustomButton(
                  onTap: () {},
                  buttonText: "Update",
                  borderColor: appcolors.gradientGreen,
                  buttonColor: appcolors.gradientGreen,
                  textColor: appcolors.white,
                  borderRadius: 10,
                ),
              ),
            ]).pOnly(top: 20, right: 20)
          ],
        ),
      ),
    );
  }
}

class CustomTextformfield extends StatelessWidget {
  final String hinttext;
  const CustomTextformfield({
    Key? key,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: appcolors.greyText,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: appcolors.greyText,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalRequirementsSec extends StatelessWidget {
  final String text;
  const PersonalRequirementsSec({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: appcolors.black,
        ),
        Text(text).pOnly(left: 10)
      ],
    );
  }
}
