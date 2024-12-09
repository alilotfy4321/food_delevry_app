import 'package:flutter/material.dart';
import 'package:food_delevry_app/contraller/food_delevry/food_delevry_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//screenW(screen width) screenH(screen height)
// screenH/(screenH/value);
// screenW/(screenW/value);
Widget customIndicator(FoodDelevryCubit cubit,double screenW,double screenH) => SmoothPageIndicator(
      controller: cubit.sliderController,
      count: 5,
      effect: WormEffect(
        dotHeight: screenH/(screenH/12.0),
        dotWidth: screenW/(screenW/12.0),
        spacing:screenW/(screenW/10.0),
        activeDotColor: Colors.blue,
        dotColor: Colors.grey,
      ),
    );
