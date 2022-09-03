// ignore_for_file: prefer_const_constructors

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Catbut extends StatefulWidget {
  @override
  _CatbutState createState() => _CatbutState();
}

class _CatbutState extends State<Catbut> {
  final List<String> items = [
    'Web Development',
    'Mobile App Development',
    'Digital Marketing',
    'Video Editing',
    'Graphics Design',
    'Voice Over',
    'Content Writing',
    'NFT',
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
              Icon(
                FluentIcons.toolbox_12_filled,
                size: 16,
                color: appcolors.gradientGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Select a Services',
                  style: TextStyle(
                    fontSize: 16,
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
                        fontSize: 18,
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
            Icons.arrow_drop_down,
          ),
          iconSize: 34,
          iconEnabledColor: appcolors.greyText,
          iconDisabledColor: appcolors.greyText,
          buttonHeight: 40,
          buttonWidth: 300,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30), topLeft: Radius.circular(30)),
            border: Border.all(
              color: appcolors.white,
            ),
            color: appcolors.white,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 300,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            color: appcolors.white,
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
              Icon(
                FluentIcons.location_12_filled,
                size: 16,
                color: appcolors.gradientGreen,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Select a Location',
                  style: TextStyle(
                    fontSize: 16,
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
                        fontSize: 18,
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
          buttonWidth: 300,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            //borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30), topLeft: Radius.circular(30)),
            border: Border.all(
              color: appcolors.white,
            ),
            color: appcolors.white,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 300,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            color: appcolors.white,
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
