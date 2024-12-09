// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters
import 'package:flutter/material.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/small_text.dart';

class CustomRowIconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const CustomRowIconAndText({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        hSpace(5),
        SmallText(text: text,),
      ],
    );
  }
}
