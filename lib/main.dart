// main.dart
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unnecessary_new, unused_import

import 'dart:html';

import 'package:bigposweb/Accounts/changeemail.dart';
import 'package:bigposweb/Accounts/changepass.dart';
import 'package:bigposweb/Accounts/changeusername.dart';
import 'package:bigposweb/Admin/Register.dart';
import 'package:bigposweb/Certificates/certificates.dart';
import 'package:bigposweb/prefrences/preference.dart';
import 'package:bigposweb/search%20sec/datamodel.dart';
import 'package:bigposweb/navbar.dart';
import 'package:bigposweb/testfile.dart';
import 'package:bigposweb/widgets/Sidebar_buttons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bigposweb/Catdropdown.dart';
import 'package:bigposweb/custombutton.dart';
import 'package:bigposweb/themes.dart/colorscheme.dart';

import 'homepage.dart';
import 'search sec/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Register(),
    );
  }
}
