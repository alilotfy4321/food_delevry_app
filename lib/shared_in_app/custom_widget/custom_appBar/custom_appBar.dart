// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_delevry_app/shared_in_app/app_colors.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/big_text.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/small_text.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //screenW(screen width) screenH(screen height)
    double screenW = MediaQuery.sizeOf(context).width;
    double screenH = MediaQuery.sizeOf(context).height;
    // height/(height/value);
    return Container(
      margin: EdgeInsets.only(
          top: screenH / (screenH / 35),
          left: screenW / (screenW / 25),
          right: screenW / (screenW / 25)),
      child: Row(
        //parent
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //sub1
            children: [
              BigText(
                size: 20,
                text: 'Egypt',
                color: AppColors.mainColor,
              ),
              Row(
                //sub1.1
                children: [
                  SmallText(
                    text: 'Cairo',
                    size: screenH / (screenH / 16),
                  ),
                  hSpace(screenW / (screenW / 10)),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    size: screenH / (screenH / 16),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(screenH / (screenH / 15)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
