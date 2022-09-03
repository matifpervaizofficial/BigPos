import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';

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
