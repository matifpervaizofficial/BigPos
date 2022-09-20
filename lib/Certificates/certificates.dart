// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Accounts Settings/component1.dart';
import '../custombutton.dart';

class CertificatesComp extends StatefulWidget {
  const CertificatesComp({super.key});

  @override
  State<CertificatesComp> createState() => _CertificatesCompState();
}

class _CertificatesCompState extends State<CertificatesComp> {
  List<Widget> certificateList = [];
  void _addCard() {
    setState(() {
      certificateList.add(certificateCard(context, _removeCard));
    });
  }

  void _removeCard() {
    setState(() {
      if (certificateList.isNotEmpty) {
        certificateList.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 900,
        color: appcolors.background,
        child: Column(
          children: [
            Container(
              height: 300,
              child: certificateList.isEmpty
                  ? Center(
                      child: Text("No Certificates !",
                          style: TextStyle(fontSize: 20)))
                  : ListView.builder(
                      itemCount: certificateList.length,
                      itemBuilder: (BuildContext context, index) {
                        return certificateCard(context, _removeCard)
                            .pSymmetric(h: 50, v: 20);
                      }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: _addCard,
                  child: Row(
                    children: [
                      Text(
                        "Add Certificates",
                        style: TextStyle(color: appcolors.gradientGreen),
                      ),
                      Icon(
                        Icons.add,
                        color: appcolors.gradientGreen,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      child: CustomButton(
                        onTap: () {},
                        buttonText: "Save",
                        buttonColor: appcolors.gradientGreen,
                        textColor: appcolors.white,
                        borderRadius: 10,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: appcolors.gradientGreen),
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(color: appcolors.gradientGreen),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: appcolors.gradientGreen,
                            )
                          ],
                        ).pOnly(left: 10),
                      ),
                    )
                  ],
                )
              ],
            ).pSymmetric(h: 40)
          ],
        ),
      ).pSymmetric(h: 150, v: 100),
    );
  }
}

Row certificateCard(BuildContext context, void Function() remove) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: appcolors.greyText)),
                child: Center(child: Icon(Icons.add)),
                width: 130.0,
                height: 100.0,
              ),
              Positioned(
                bottom: 75,
                left: 100,
                //give the values according to your requirement
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text("Experience"),
                  Text("Years"),
                ],
              ),
              DroButton().pOnly(left: 10)
            ],
          ).pOnly(top: 10)
        ],
      ),
      Column(
        children: [
          Row(
            children: [
              personalinfotextfield(
                      containerwidth: 300,
                      hinttext: "Certificate",
                      inputType: TextInputType.datetime,
                      textInputAction: TextInputAction.done)
                  .pOnly(right: 20),
              personalinfotextfield(
                  containerwidth: 300,
                  hinttext: "Issue of Organization",
                  inputType: TextInputType.datetime,
                  textInputAction: TextInputAction.done),
            ],
          ).pOnly(bottom: 20),
          Container(
            width: 620,
            child: TextFormField(
              maxLines: 3,
              maxLength: 300,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Tell us about this certificate...",
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: appcolors.greyText, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: appcolors.greyText, width: 2)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: remove,
                  child: Text(
                    "Delete Certificate",
                    style: TextStyle(color: appcolors.red, fontSize: 16),
                  )).pOnly(left: 500),
            ],
          )
        ],
      ).pOnly(left: 30),
    ],
  );
}

class DroButton extends StatefulWidget {
  DroButton({Key? key}) : super(key: key);

  @override
  State<DroButton> createState() => _DroButtonState();
}

class _DroButtonState extends State<DroButton> {
  String dropdownvalue = '0';

  var items = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
