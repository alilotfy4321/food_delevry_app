// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters, must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  Color color;
  double size;
  double height;
  SmallText({
    Key? key,
    required this.text,
    this.color=const Color.fromARGB(255, 122, 119, 119),
    this.size = 12,
    this.height=1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height,
      ),
      
    );
  }
}
