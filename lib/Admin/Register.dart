import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 3.0,
            height: 15.0,
            child: Image.asset(
              'assets/images/logo2.png',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
