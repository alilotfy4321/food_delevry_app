// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters, must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  Color? color;
  TextOverflow overflow;
  double size;
  FontWeight? fontWeight;
  int maxline;
  BigText({
    Key? key,
    required this.text,
    this.color=const Color(0xff89dad0),
    this.overflow = TextOverflow.ellipsis,
    this.size = 20,
    this.fontWeight = FontWeight.w400,
    this.maxline=1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        overflow: overflow,
        fontSize: size,
        fontWeight: fontWeight,
        
      ),
      maxLines: maxline,
    );
  }
}
