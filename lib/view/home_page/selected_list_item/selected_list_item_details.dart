// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_delevry_app/contraller/food_delevry/food_delevry_cubit.dart';
import 'package:food_delevry_app/shared_in_app/app_colors.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';

import '../../../shared_in_app/custom_widget/custom_row_icon_text.dart';
import '../../../shared_in_app/custom_widget/custom_text/big_text.dart';
import '../../../shared_in_app/custom_widget/custom_text/small_text.dart';

Widget SelectedListItemDetails(screenH, screenW, FoodDelevryCubit cubit) {
  String text =
      "Start with a hook that grabs attention and sets the tone for the review. Mention the name of the restaurant, café, or food item and why you decided to try it"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "attention and sets the tone for the review. Mention the name of the restaurant, café, or food item and why you decided to try it"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "attention and sets the tone for the review. Mention the name of the restaurant, café, or food item and why you decided to try it"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype"
      "Nestled in the heart of downtown, Bella Italia promises authentic Italian flavors, and I couldn’t resist the temptation to find out if it lives up to the hype";
  return
      //----------------------------1
      Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      BigText(
        text: 'Egyption side ',
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      vSpace(screenH / (screenH / 15)),
      Row(
        children: [
          Wrap(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color: AppColors.mainColor,
                size: screenW / (screenW / 15),
              ),
            ),
          ),
          hSpace(screenW / (screenW / 10)),
          SmallText(text: '4.9'),
          hSpace(screenW / (screenW / 10)),
          SmallText(text: '1200'),
          hSpace(screenW / (screenW / 10)),
          SmallText(text: 'comments'),
        ],
      ),
      vSpace(screenH / (screenH / 15)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
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
      vSpace(screenH / (screenH / 20)),
      BigText(
        text: 'Introduce',
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      vSpace(screenH / (screenH / 20)),
      (cubit.isExpanded)
          ? Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: text.length.toInt()/2.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: text,color: Colors.black,height: screenH / (screenH / 1.8),),
                      TextButton(
                        onPressed: () {
                          cubit.changeTextHeight();
                        },
                        child: Text(
                           'seeLess' ,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration:
                                TextDecoration.underline, // Underline the text
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: (text.length<300)?text:text.substring(0, 300) + '...',
                  height: screenH / (screenH / 1.8),
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {
                    cubit.changeTextHeight();
                  },
                  child: Text(
                    'seeMore',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration:
                          TextDecoration.underline, // Underline the text
                    ),
                  ),
                ),
              ],
            ),
    ],
  );
}
