// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../selected_list_item/selected_list_item.dart';

Widget ScroolListPart1(context) {
  double screenW = MediaQuery.sizeOf(context).width;
  double screenH = MediaQuery.sizeOf(context).width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SelectedListItem()),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
            image: AssetImage('assets/images/1.webp'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(screenH / (screenH / 20)),
      ),
      width: screenW / (screenW / 100),
      height: screenH / (screenH / 120),
    ),
  );
}
