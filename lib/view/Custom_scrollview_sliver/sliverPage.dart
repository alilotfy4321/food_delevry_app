// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevry_app/constant/used_text_test.dart';
import 'package:food_delevry_app/contraller/food_delevry/food_delevry_cubit.dart';
import 'package:food_delevry_app/shared_in_app/app_colors.dart';
import 'package:food_delevry_app/shared_in_app/custom_widget/custom_text/small_text.dart';

class ListPartTwoTapped extends StatelessWidget {
  const ListPartTwoTapped({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.sizeOf(context).width;
    double screenH = MediaQuery.sizeOf(context).width;
    return BlocBuilder<FoodDelevryCubit, FoodDelevryState>(
      builder: (context, state) {
        var cubit = FoodDelevryCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  ),
              backgroundColor: Colors.white,
              expandedHeight: screenH / (screenH / 300),
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                //title: Text('Sliver Example'),

                background: Image.asset(
                  'assets/images/1.webp',
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenH / (screenH / 30)),
                        topRight: Radius.circular(screenH / (screenH / 30))),
                  ),
                  height: screenH / (screenH / 30),
                  child: Center(
                    child: SmallText(
                      text: 'Food title ',
                      size: screenH / (screenH / 18),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (cubit.isExpanded)
                        ? SmallText(
                            text: testText,
                            height: screenH / (screenH / 1.8),
                            size: 16,
                            color: Colors.black,
                          )
                        : SmallText(
                            text: (testText.length < 300)
                                ? testText
                                : testText.substring(0, 300),
                            height: screenH / (screenH / 1.8),
                            size: screenH / (screenH / 16),
                            color: Colors.black,
                          ),
                    TextButton(
                        onPressed: () {
                          cubit.changeTextHeight();
                        },
                        child: Text(
                          (cubit.isExpanded) ? 'seeLess' : 'seeMore',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ]),
          bottomNavigationBar: Container(
            height: screenH / (screenH / 120),
            width: screenW / (screenW / 200),
            color: Colors.grey[200],
          ),
        );
      },
    );
  }
}
