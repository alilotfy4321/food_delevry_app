// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_delevry_app/view/home_page/list_view_part/scrollList_part2.dart';
import 'package:food_delevry_app/view/home_page/list_view_part/scrollList_part_1.dart';



//screenW(screen width) screenH(screen height)
// screenH/(screenH/value);
// screenW/(screenW/value);
class ListScrollingPart extends StatelessWidget {
  const ListScrollingPart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.sizeOf(context).width;
  double screenH = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (contetx, index) =>
              Container(
                  margin: EdgeInsets.all(10),
                  height: screenH/(screenH/120),
                  // color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //----------1
                    ScroolListPart1(context),
                      //---------------------------2
                     ScroolListPart2(context),
                    ],
                  ),
                ),
              ),
    );
  }
}
