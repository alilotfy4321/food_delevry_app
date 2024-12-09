// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_appBar/custom_appBar.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/big_text.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/small_text.dart';
import 'package:food_delevry_app/view/home_page/list_view_part/scrolling_list.dart';
import 'package:food_delevry_app/view/home_page/smooth_indecator.dart';
import '../../contraller/food_delevry/food_delevry_cubit.dart';
import 'slider_page_view/custom_slider.dart';

//screenW(screen width) screenH(screen height)
// screenH/(screenH/value);
// screenW/(screenW/value);
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodDelevryCubit, FoodDelevryState>(
      builder: (context, state) {
        double screenW = MediaQuery.sizeOf(context).width;
        double screenH = MediaQuery.sizeOf(context).width;
        FoodDelevryCubit cubit = FoodDelevryCubit();
        return Scaffold(
          body: Column(
            children: [
              //--------------------part one custom AppBAr----
              CustomAppBar(),
              vSpace(screenH / (screenH / 20)),
              //---------------slider in pageview---

              CustomSlider(cubit),
              vSpace(screenH / (screenH / 10)),
              //-----smoothpage indicator----
              customIndicator(cubit, screenW, screenH),
              //-------popular text
              Container(
                margin: EdgeInsets.only(
                  top: screenH / (screenH / 20),
                  left: screenW / (screenW / 20),
                ),
                child: Row(
                  children: [
                    BigText(
                      text: 'Popular .',
                      color: Colors.black,
                    ),
                    hSpace(
                      screenW / (screenW / 10),
                    ),
                    SmallText(
                      text: 'FoodPairing',
                      size: screenH / (screenH / 16),
                    ),
                  ],
                ),
              ),
              //-----------List-----------
              ListScrollingPart(),
            ],
          ),
        );
      },
    );
  }
}
