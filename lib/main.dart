// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevry_app/contraller/food_delevry/food_delevry_cubit.dart';
import 'package:food_delevry_app/view/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodDelevryCubit(),
      child: BlocBuilder<FoodDelevryCubit, FoodDelevryState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
           home: HomeScreen(),
          //home: CustomScroolSliver(),
          );
        },
      ),
    );
  }
}
