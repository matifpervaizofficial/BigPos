// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bigposweb/Catdropdown.dart';
import 'package:bigposweb/custombutton.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: appcolors.background,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          height: 64,
          color: appcolors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/Logo.jpg")),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // header

                Container(
                  height: 697,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/header.jpg"),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Find ',
                            style:
                                TextStyle(color: appcolors.white, fontSize: 50),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Professionals ',
                                style: TextStyle(
                                  color: appcolors.gradientGreen,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Especially For You ',
                                style: TextStyle(
                                  color: appcolors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                      ).pSymmetric(
                        h: 220,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Be-Smart, Be-in, Be-Pass ",
                        style: TextStyle(
                          color: appcolors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Catbut(),
                              LocationCat(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: appcolors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      )),
                                  height: 40,
                                  child: CustomButton(
                                      borderColor: appcolors.gradientGreen,
                                      borderRadius: 40,
                                      onTap: () {},
                                      buttonText: "Search"))
                            ],
                          )
                        ],
                      ).pSymmetric(
                        h: 260,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //2nd sec of homepage
            Container(
              height: 220,
              width: double.infinity,
              color: appcolors.gradientGreen,
              child: Center(
                child: Row(
                  children: [
                    customIcon(
                      icon: Icons.search,
                      containername: 'Search',
                    ),
                    SizedBox(
                      width: 80,
                      child: Divider(
                        height: 10,
                        thickness: 2,
                        color: Color.fromARGB(47, 255, 255, 255),
                      ),
                    ).pOnly(bottom: 30),
                    customIcon(
                      icon: Icons.phone,
                      containername: "Contact",
                    ),
                    SizedBox(
                      width: 80,
                      child: Divider(
                        height: 10,
                        thickness: 2,
                        color: Color.fromARGB(47, 255, 255, 255),
                      ),
                    ).pOnly(bottom: 30),
                    customIcon(
                      icon: Icons.add_reaction,
                      containername: "Good Luck",
                    )
                  ],
                ).pSymmetric(h: 450, v: 60),
              ),
            ),
            //3rd sec of homepage
            Container(
              width: double.infinity,
              height: 400,
              color: appcolors.background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenSize.width * 0.50,
                    //  color: Color.fromARGB(24, 0, 0, 0),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 30,
                          left: 200,
                          height: 400,
                          width: 220,
                          child: Container(
                            width: 350,
                            height: 521,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/homes3-1.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 440,
                          width: 150,
                          height: 250,
                          child: Container(
                            width: 244,
                            height: 310,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/homes3-2.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 330,
                            left: 393,
                            width: 200,
                            height: 40,
                            child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 11, 163, 34))),
                                child: CustomButton(
                                    borderRadius: 2.4,
                                    buttonColor: appcolors.gradientGreen,
                                    onTap: () {},
                                    borderColor: appcolors.gradientGreen,
                                    buttonText: "100% trusted"))),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.50,
                    // color: Color.fromARGB(57, 0, 0, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Trust & Popular Professional Portal",
                            style: TextStyle(fontSize: 36),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 450,
                            child: Text(
                              "Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur.",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2,
                                        color: appcolors.gradientGreen)),
                                height: 40,
                                width: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Post a Job",
                                      style: TextStyle(
                                          color: appcolors.gradientGreen,
                                          fontSize: 16),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: appcolors.gradientGreen,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: appcolors.gradientGreen,
                                          blurRadius: 10.0,
                                          offset: Offset(0.75, 0.75))
                                    ],
                                    color: appcolors.gradientGreen,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2,
                                        color: appcolors.gradientGreen)),
                                height: 40,
                                width: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Apply Now",
                                      style: TextStyle(
                                          color: appcolors.white, fontSize: 16),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 15,
                                      color: appcolors.gradientGreen,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ]).pOnly(top: 140),
                  ),
                ],
              ),
            ),
            //4th sec that is curved sec
            Container(
              width: screenSize.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/images/background.png"))),
              height: 700,
              child: Row(
                children: [
                  Container(
                    width: screenSize.width * 0.50,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 160,
                          left: 380,
                          width: 200,
                          height: 350,
                          child: Container(
                            width: 244,
                            height: 310,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/mobile.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 150,
                          width: 400,
                          height: 500,
                          child: Container(
                            width: 244,
                            height: 310,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/mobile2.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Download The Be-Pass Mobile App",
                          style:
                              TextStyle(fontSize: 30, color: appcolors.white),
                        ),
                        Container(
                          child: Text(
                            "Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                            style:
                                TextStyle(fontSize: 16, color: appcolors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/apple.png"),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 150,
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/apple.png"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ).pOnly(top: 250, right: 60),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 900,
                color: appcolors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 152,
                      width: 123,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/frame.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Subscribe Newsletter ",
                          style:
                              TextStyle(fontSize: 36, color: appcolors.black),
                        ),
                        Text(
                          "Get notified about the next update",
                          style: TextStyle(
                              fontSize: 24, color: appcolors.greyText),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 2,
                                      color: appcolors.gradientGreen)),
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusColor: appcolors.gradientGreen,
                                      hintText: " Enter Email"),
                                ).pOnly(left: 20, bottom: 5),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: appcolors.gradientGreen,
                                      blurRadius: 10.0,
                                      offset: Offset(0.75, 0.75))
                                ],
                              ),
                              height: 40,
                              width: 140,
                              child: CustomButton(
                                  borderRadius: 10,
                                  textColor: appcolors.white,
                                  borderColor: appcolors.gradientGreen,
                                  buttonColor: appcolors.gradientGreen,
                                  onTap: () {},
                                  buttonText: "Subscribe"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 152,
                      width: 123,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/frame.png"),
                      ),
                    ),
                  ],
                ).p(20),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              width: double.infinity,
              child: VxArc(
                height: 20,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: appcolors.gradientGreen,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 2,
                        height: 150,
                        color: appcolors.background,
                      ).pSymmetric(h: 200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Copyright © 2022 · Be-Pass.",
                            style: TextStyle(color: appcolors.white),
                          ),
                          Text(
                            "Privacy Policy | Terms of Service | Credits | Contact Us",
                            style: TextStyle(color: appcolors.white),
                          )
                        ],
                      ).pSymmetric(h: 200)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class customIcon extends StatelessWidget {
  final IconData icon;
  final String containername;
  const customIcon({
    Key? key,
    required this.icon,
    required this.containername,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: appcolors.background,
              borderRadius: BorderRadius.circular(10)),
          height: 64,
          width: 64,
          child: Icon(
            icon,
            size: 30,
            color: appcolors.gradientGreen,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          containername,
          style: TextStyle(color: appcolors.white, fontSize: 16),
        )
      ],
    );
  }
}
