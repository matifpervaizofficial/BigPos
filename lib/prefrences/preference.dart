// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bigposweb/search%20sec/customtext.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../custombutton.dart';

class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 900,
        color: appcolors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 2,
                            color: appcolors.background,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              textitem: "Time Format",
                              textColor: appcolors.gradientGreen,
                              textSize: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  textitem: "Use 24-hour format",
                                  textColor: appcolors.black,
                                  textSize: 14),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                inactiveThumbColor: appcolors.white,
                                inactiveTrackColor: appcolors.greyText,
                                activeTrackColor: appcolors.gradientGreen,
                                activeColor: appcolors.white,
                              ),
                            ],
                          ),
                          CustomText(
                              textitem: "13:00",
                              textColor: appcolors.greyText,
                              textSize: 12),
                        ],
                      ).p(20),
                    ).p(20),
                    Container(
                      width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                          color: appcolors.white,
                          border: Border.all(
                              color: appcolors.background, width: 2)),
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: appcolors.white, width: 2)),
                        width: 250,
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [CurrencySel()],
                        ),
                      ).p(20),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      color: appcolors.white,
                      border:
                          Border.all(color: appcolors.background, width: 2)),
                  child: Column(
                    children: [LanguageSel()],
                  ),
                ).pOnly(top: 50)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: 40,
                width: 120,
                child: CustomButton(
                  onTap: () {},
                  buttonText: "Save Changes",
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

class CurrencySel extends StatefulWidget {
  const CurrencySel({super.key});

  @override
  State<CurrencySel> createState() => _CurrencySelState();
}

class _CurrencySelState extends State<CurrencySel> {
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
                textitem: "Currency",
                textColor: appcolors.gradientGreen,
                textSize: 16)
            .pOnly(bottom: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/shakiel.svg',
                  width: 15.0,
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ILS"),
                    Text(
                      "Israeli Shekel",
                      style: TextStyle(fontSize: 10, color: appcolors.greyText),
                    ),
                  ],
                ).pOnly(left: 5),
              ],
            ),
            Radio(
                activeColor: appcolors.gradientGreen,
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                })
          ],
        ),
        Divider().pSymmetric(h: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/dollar.svg',
                  width: 15.0,
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("USD"),
                    Text(
                      "United States Dollar ",
                      style: TextStyle(fontSize: 10, color: appcolors.greyText),
                    )
                  ],
                ).pOnly(left: 5),
              ],
            ),
            Radio(
                activeColor: appcolors.gradientGreen,
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                })
          ],
        ),
        Divider().pSymmetric(h: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/euro.svg',
                  width: 15.0,
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("EUR"),
                    Text(
                      "Euro",
                      style: TextStyle(fontSize: 10, color: appcolors.greyText),
                    )
                  ],
                ).pOnly(left: 5),
              ],
            ),
            Radio(
                activeColor: appcolors.gradientGreen,
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                })
          ],
        ),
        Divider().pSymmetric(h: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Gbp.svg',
                  width: 15.0,
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("USD"),
                    Text(
                      "British Pound ",
                      style: TextStyle(fontSize: 10, color: appcolors.greyText),
                    )
                  ],
                ).pOnly(left: 5),
              ],
            ),
            Radio(
                activeColor: appcolors.gradientGreen,
                value: 4,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                })
          ],
        )
      ],
    ).p(5);
  }
}

class LanguageSel extends StatefulWidget {
  const LanguageSel({super.key});

  @override
  State<LanguageSel> createState() => _LanguageSelState();
}

class _LanguageSelState extends State<LanguageSel> {
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomText(
              textitem: "Language",
              textColor: appcolors.gradientGreen,
              textSize: 14)
          .pOnly(bottom: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("עברית"),
          Radio(
              activeColor: appcolors.gradientGreen,
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              })
        ],
      ),
      Divider().pSymmetric(h: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("English "),
          Radio(
              activeColor: appcolors.gradientGreen,
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              })
        ],
      )
    ]).p(20);
  }
}
