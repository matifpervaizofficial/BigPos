// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:bigposweb/widgets/Sidebar_buttons.dart';
import 'package:bigposweb/widgets/rangeslider.dart';

import '../testfile.dart';
import 'customtext.dart';
import 'datamodel.dart';
import 'locationsCat.dart';
import 'pricingcategories.dart';
import 'userprofilewid.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                          Pricerangcategories(
                            catname: "Group",
                          ),
                          Pricerangcategories(
                            catname: "Personal",
                          ).pOnly(left: 10),
                          Pricerangcategories(
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
                            return Userwidget(userdata: UserInfo.users[index]);
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
