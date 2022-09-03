// ignore_for_file: prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors, prefer_final_fields

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'package:bigposweb/themes.dart/colorscheme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../search sec/customtext.dart';
import '../search sec/searchpage.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "filters";
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

var selectedRange = RangeValues(5, 50);

class _FilterScreenState extends State<FilterScreen> {
  TextEditingController _textEditingControllerLoc = TextEditingController();
  TextEditingController _textEditingControllerPro = TextEditingController();
  TextEditingController _textEditingControllerSkill = TextEditingController();
  bool _isSelected = false;
  //TextEditingController _textArea = new TextEditingController();
  List<String> _valuesPro = [];
  List<bool> _selectedPro = [];
  List<String> _valuesSkill = [];
  List<bool> _selectedSkill = [];
  dynamic selectedValue;
  double ratingNum = 3;
  bool ageValue1 = false;
  bool ageValue2 = false;
  bool ageValue3 = false;
  bool ageValue4 = false;
  bool ageValue5 = false;
  bool gValueM = false;
  bool gValueF = false;
  bool whValueM = false;
  bool whValueA = false;
  bool whValueE = false;
  bool whValueN = false;

  @override
  void dispose() {
    _textEditingControllerPro.dispose();
    _textEditingControllerSkill.dispose();
    super.dispose();
  }

  //Profession
  Widget buildChipsPro() {
    List<Widget> chips = [];

    for (int i = 0; i < _valuesPro.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selectedPro[i],
        label: Text(
          _valuesPro[i],
          style: TextStyle(
              color: appcolors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        selectedColor: Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: appcolors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selectedPro[i] = !_selectedPro[i];
          });
        },
        onDeleted: () {
          _valuesPro.removeAt(i);
          _selectedPro.removeAt(i);

          setState(() {
            _valuesPro = _valuesPro;
            _selectedPro = _selectedPro;
          });
        },
      );

      chips.add(actionChip);
    }
    return GridView(
      // This next line does the trick.
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  //Skills
  Widget buildChipsSkill() {
    List<Widget> chips = [];

    for (int i = 0; i < _valuesSkill.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selectedSkill[i],
        label: Text(
          _valuesSkill[i],
          style: TextStyle(
              color: appcolors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        selectedColor: Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: appcolors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selectedSkill[i] = !_selectedSkill[i];
          });
        },
        onDeleted: () {
          _valuesSkill.removeAt(i);
          _selectedSkill.removeAt(i);

          setState(() {
            _valuesSkill = _valuesSkill;
            _selectedSkill = _selectedSkill;
          });
        },
      );

      chips.add(actionChip);
    }
    return GridView(
      // This next line does the trick.
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: appcolors.background,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Select Profession",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 1.0,
                  ),
                ),
              ),
              controller: _textEditingControllerPro,
              onEditingComplete: () {
                _valuesPro.add(_textEditingControllerPro.text);
                _selectedPro.add(true);
                _textEditingControllerPro.clear();

                setState(() {
                  _valuesPro = _valuesPro;
                  _selectedPro = _selectedPro;
                });
              },
            ),
          ),
          SizedBox(
            height: _valuesPro.isEmpty ? 5 : 100,
            child: buildChipsPro(),
          ),
          SizedBox(
            height: _valuesSkill.isEmpty ? 5 : 100,
            child: buildChipsSkill(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 80,
                  child: Chip(
                      label: Text("Web dev",
                          style: TextStyle(
                              color: Color.fromARGB(255, 123, 96, 14))),
                      backgroundColor: Colors.amber)),
              Container(
                  width: 80,
                  child: Chip(
                      label: Text(
                        "Writer",
                        style: TextStyle(
                            color: Color.fromARGB(255, 201, 136, 212)),
                      ),
                      backgroundColor: Color.fromARGB(255, 68, 10, 79))),
            ],
          ),
          CustomText(
                  textitem: "Rating", textColor: appcolors.black, textSize: 14)
              .pOnly(top: 10),
          RatingBar.builder(
            itemSize: 20,
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
          ).pOnly(top: 10),
          CustomText(textitem: "Age", textColor: appcolors.black, textSize: 14)
              .pOnly(top: 10, bottom: 10),
          Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: ageValue1,
                    onChanged: (bool? value) {
                      setState(() {
                        this.ageValue1 = !this.ageValue1;
                      });
                    },
                  ),
                  Text("15 - 20"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: ageValue2,
                    onChanged: (bool? value) {
                      setState(() {
                        this.ageValue2 = !this.ageValue2;
                      });
                    },
                  ),
                  Text("20 -30"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: ageValue3,
                    onChanged: (bool? value) {
                      setState(() {
                        this.ageValue3 = !this.ageValue3;
                      });
                    },
                  ),
                  Text("30 -40"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: ageValue4,
                    onChanged: (bool? value) {
                      setState(() {
                        this.ageValue4 = !this.ageValue4;
                      });
                    },
                  ),
                  Text("40-50"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: ageValue5,
                    onChanged: (bool? value) {
                      setState(() {
                        this.ageValue5 = !this.ageValue5;
                      });
                    },
                  ),
                  Text("50+"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
                  textitem: "Gender", textColor: appcolors.black, textSize: 14)
              .pOnly(top: 10, bottom: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: gValueM,
                    onChanged: (bool? value) {
                      setState(() {
                        this.gValueM = !this.gValueM;
                      });
                    },
                  ),
                  Text("Male"),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: gValueF,
                    onChanged: (bool? value) {
                      setState(() {
                        this.gValueF = !this.gValueF;
                      });
                    },
                  ),
                  Text("Female"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
                  textitem: "Opening Hourse",
                  textColor: appcolors.black,
                  textSize: 14)
              .pOnly(bottom: 10),
          Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: whValueM,
                    onChanged: (bool? value) {
                      setState(() {
                        this.whValueM = !this.whValueM;
                      });
                    },
                  ),
                  Text("Morning"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: whValueA,
                    onChanged: (bool? value) {
                      setState(() {
                        this.whValueA = !this.whValueA;
                      });
                    },
                  ),
                  Text("Afternoon"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: whValueE,
                    onChanged: (bool? value) {
                      setState(() {
                        this.whValueE = !this.whValueE;
                      });
                    },
                  ),
                  Text("Evening"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: appcolors.gradientGreen,
                    value: whValueN,
                    onChanged: (bool? value) {
                      setState(() {
                        this.whValueN = !this.whValueN;
                      });
                    },
                  ),
                  Text("Night"),
                ],
              ),
            ],
          )
        ]);
  }
}
