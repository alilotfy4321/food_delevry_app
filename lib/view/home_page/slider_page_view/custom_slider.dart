// ignore_for_file: sized_box_for_whitespace, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_delevry_app/contraller/food_delevry/food_delevry_cubit.dart';
import 'package:food_delevry_app/view/home_page/slider_page_view/custom_slider_item.dart';

class CustomSlider extends StatelessWidget {
  FoodDelevryCubit cubit;
  CustomSlider(this.cubit, {super.key});

  @override
  Widget build(BuildContext context) {
    //screenW(screen width) screenH(screen height)
    double screenW = MediaQuery.sizeOf(context).width;
    double screenH = MediaQuery.sizeOf(context).height;
    // screenH/(screenH/value);
    // screenW/(screenW/value);
    List<String> images = [
      'assets/images/1.webp',
      'assets/images/2.webp',
      'assets/images/3.webp',
      'assets/images/4.webp',
      'assets/images/5.webp',
    ];

    return Container(
      height: screenH/(screenH/300),
      child: PageView.builder(
        controller: cubit.sliderController,
        onPageChanged: (index) {
          cubit.chanegSliderPage(index);
        },
        itemCount: 5,
        itemBuilder: (context, index) => CustomSliderItem(images[index],screenW,screenH),
      ),
    );
  }
}
