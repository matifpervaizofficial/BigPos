// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:bigposweb/widgets/Sidebar_buttons.dart';
import 'package:bigposweb/widgets/rangeslider.dart';

import '../custombutton.dart';
import '../testfile.dart';
import 'datamodel.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searccontroller = TextEditingController();
  void clearText() {
    searccontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: appcolors.background,
      appBar: AppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        //main row
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: appcolors.white,
                  width: 220,
                  height: 1100,

                  //left side column

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              textitem: "Filter",
                              textColor: appcolors.greyText,
                              textSize: 16),
                          InkWell(
                            onTap: () {},
                            child: CustomText(
                                textitem: "Clear all",
                                textColor: appcolors.greyText,
                                textSize: 14),
                          )
                        ],
                      ),
                      CustomText(
                              textitem: "Price Range",
                              textColor: appcolors.black,
                              textSize: 12)
                          .pOnly(top: 10),
                      Row(
                        children: [
                          pricerangcategories(
                            catname: "Group",
                          ),
                          pricerangcategories(
                            catname: "Personal",
                          ).pOnly(left: 10),
                          pricerangcategories(
                            catname: "Consulting",
                          ).pOnly(left: 10),
                        ],
                      ).pOnly(top: 10),
                      Pricefilter().pOnly(top: 10),
                      CustomText(
                              textitem: "Location",
                              textColor: appcolors.black,
                              textSize: 13)
                          .pOnly(top: 10),
                      LocationCat().pOnly(top: 10),
                      GoogleLoc().pOnly(top: 20),
                      CustomText(
                              textitem: "Profession",
                              textColor: appcolors.black,
                              textSize: 14)
                          .pOnly(top: 10),
                      FilterScreen().pOnly(top: 10)
                    ],
                  ).p(10),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    //search Container
                    Container(
                      width: 690,
                      height: 40,
                      decoration: BoxDecoration(
                          color: appcolors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: appcolors.gradientGreen,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Favourites",
                                  style: TextStyle(
                                      color: appcolors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: appcolors.white,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 480,
                            height: 40,
                            decoration: BoxDecoration(
                                color: appcolors.background,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )),
                            child: TextFormField(
                              controller: searccontroller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Select Profession",
                              ),
                            ).pOnly(top: 10, left: 10, bottom: 5),
                          ).pOnly(left: 10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: appcolors.background,
                            ),
                            child: IconButton(
                                onPressed: () {
                                  searccontroller.clear();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20,
                                  color: Color.fromARGB(183, 126, 119, 119),
                                )),
                          ),
                          Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: appcolors.gradientGreen,
                                  borderRadius: BorderRadius.circular(5)),
                              child: IconButton(
                                onPressed: () {
                                  clearText();
                                },
                                icon: Icon(
                                  Icons.search,
                                  size: 15,
                                  color: appcolors.white,
                                ),
                              ))
                        ],
                      ).p(5),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Grid Section
                    Container(
                      width: 690,
                      height: 1400,
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 4 / 3,
                                  mainAxisExtent: 250,
                                  crossAxisSpacing: 20),
                          itemCount: UserInfo.users.length,
                          itemBuilder: (context, index) {
                            return userwidget(userdata: UserInfo.users[index]);
                          }).p(20),
                    ),
                  ],
                ),
              ],
            ).pSymmetric(h: 150, v: 20),
            SizedBox(
              height: 100,
            ),
            //bottom section
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

class pricerangcategories extends StatelessWidget {
  final String catname;
  const pricerangcategories({
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

class LocationCat extends StatefulWidget {
  LocationCat({Key? key}) : super(key: key);

  @override
  State<LocationCat> createState() => _LocationCatState();
}

class _LocationCatState extends State<LocationCat> {
  final List<String> items = [
    'WA',
    'New York',
    'Ohawio',
    'Oslo',
    'Ottawa',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'State or City',
                  style: TextStyle(
                    fontSize: 12,
                    color: appcolors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 12,
                        color: appcolors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
          ),
          iconSize: 34,
          iconEnabledColor: appcolors.greyText,
          iconDisabledColor: appcolors.greyText,
          buttonHeight: 40,
          buttonWidth: 220,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            //borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30), topLeft: Radius.circular(30)),
            border: Border.all(
              color: appcolors.background,
            ),
            color: appcolors.background,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            color: appcolors.background,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          // offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class GoogleLoc extends StatefulWidget {
  GoogleLoc({Key? key}) : super(key: key);

  @override
  State<GoogleLoc> createState() => _GoogleLoc();
}

class _GoogleLoc extends State<GoogleLoc> {
  final List<String> items = [
    'WA',
    'New York',
    'Ohawio',
    'Oslo',
    'Ottawa',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Location Detect',
                  style: TextStyle(
                    fontSize: 12,
                    color: appcolors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 12,
                        color: appcolors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(Icons.my_location_sharp),
          iconSize: 16,
          iconEnabledColor: appcolors.greyText,
          iconDisabledColor: appcolors.greyText,
          buttonHeight: 40,
          buttonWidth: 220,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            //borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30), topLeft: Radius.circular(30)),
            border: Border.all(
              color: appcolors.background,
            ),
            color: appcolors.background,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            color: appcolors.background,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          // offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class Userwidget extends StatelessWidget {
  final UserData userdata;
  const Userwidget({
    Key? key,
    required this.userdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      decoration: BoxDecoration(
          color: appcolors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 64.57,
                    width: 64.57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(userdata.userimage),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userdata.name,
                            style: TextStyle(
                                fontSize: 16,
                                color: appcolors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.verified,
                                size: 25,
                                color: appcolors.gradientGreen,
                              ).pOnly(right: 10),
                              Icon(
                                Icons.favorite,
                                size: 25,
                                color: appcolors.gradientGreen,
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          userdata.desc,
                          style: TextStyle(
                              fontSize: 12, color: appcolors.greyText),
                        ),
                      )
                    ],
                  ).pOnly(left: 10)
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                userdata.location,
                style: TextStyle(
                    color: appcolors.greyText,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              RatingBar.builder(
                glow: true,
                itemSize: 15,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Color.fromARGB(241, 222, 113, 30),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          Container(
            height: 56,
            width: 390,
            color: appcolors.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomText(
                        textitem: "Group",
                        textColor: appcolors.gradientGreen,
                        textSize: 16),
                    Text(
                      "\$${userdata.groupprice}",
                      style: TextStyle(
                          color: appcolors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomText(
                        textitem: "Personal",
                        textColor: appcolors.gradientGreen,
                        textSize: 16),
                    Text(
                      "\$${userdata.personprice}",
                      style: TextStyle(
                          color: appcolors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomText(
                        textitem: "Consulting",
                        textColor: appcolors.gradientGreen,
                        textSize: 16),
                    Text(
                      "\$${userdata.consultingprice}",
                      style: TextStyle(
                          color: appcolors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                )
              ],
            ).p(5),
          ).p(10),
          Row(
            children: [
              customgallery(Image: "assets/images/g1.jpg"),
              customgallery(Image: "assets/images/g2.jpg"),
              customgallery(Image: "assets/images/g3.jpg"),
              customgallery(Image: "assets/images/g4.jpg"),
              Container(
                height: 40,
                width: 95,
                child: CustomButton(
                    onTap: () {},
                    borderRadius: 5,
                    borderColor: appcolors.gradientGreen,
                    buttonColor: appcolors.gradientGreen,
                    textColor: appcolors.white,
                    buttonText: "Contact Now"),
              )
            ],
          )
        ],
      ).p(10),
    );
  }
}

class customgallery extends StatelessWidget {
  final Image;
  const customgallery({
    Key? key,
    required this.Image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(Image),
        ),
      ),
    ).p(5);
  }
}
