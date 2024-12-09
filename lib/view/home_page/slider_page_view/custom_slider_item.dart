// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_delevry_app/shared_in_app/app_colors.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_row_icon_text.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/big_text.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/small_text.dart';
//screenW(screen width) screenH(screen height)
// screenH/(screenH/value);
// screenW/(screenW/value);
Widget CustomSliderItem(String image,double screenW,double screenH) => SizedBox(

      height: screenH/(screenH/300),
      //color: Colors.red,
      child: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: screenW/(screenW/10)),
          height: screenH/(screenH/220),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(screenH/(screenH/20)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(screenH/(screenH/10)),
            margin: EdgeInsets.only(
              left: screenW/(screenW/25),
              right: screenW/(screenW/25),
              bottom: screenH/(screenH/10),
            ),
            height: screenH/(screenH/120),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                screenH/(screenH/15),
              ),
              boxShadow:const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 4),
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: 'Egyption side ',
                  color: Colors.black,
                ),
                vSpace(screenH/(screenH/10)),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: screenW/(screenW/15),
                        ),
                      ),
                    ),
                    hSpace(screenW/(screenW/10)),
                    SmallText(text: '4.9'),
                    hSpace(screenW/(screenW/10)),
                    SmallText(text: '1200'),
                    hSpace(screenW/(screenW/10)),
                    SmallText(text: 'comments'),
                  ],
                ),
                vSpace(screenH/(screenH/10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    CustomRowIconAndText(
                      icon: Icons.circle,
                      text: 'Normal',
                      iconColor: Colors.orange,
                    ),
                    CustomRowIconAndText(
                      icon: Icons.location_on,
                      text: '1.7 Km',
                      iconColor: AppColors.mainColor,
                    ),
                    CustomRowIconAndText(
                      icon: Icons.alarm,
                      text: '32 min',
                      iconColor: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
