import 'package:flutter/material.dart';
import 'package:food_delevry_app/shared_in_app/app_colors.dart';
import 'package:food_delevry_app/shared_in_app/custom_space/v_h_space.dart';
import 'package:food_delevry_app/view/home_page/selected_list_item.dart';

import '../../../shared_in_app/custom_widget/custom_row_icon_text.dart';
import '../../../shared_in_app/custom_widget/custom_text/big_text.dart';
import '../../../shared_in_app/custom_widget/custom_text/small_text.dart';

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
          itemBuilder: (contetx, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SelectedListItem()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 120,
                  // color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //----------1
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/images/1.webp'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: screenW / (screenW / 100),
                        height: screenH / (screenH / 120),
                      ),
                      //---------------------------2
                      Container(
                        height: screenH / (screenH / 120),
                        width: screenW / (screenW / 250),
                        padding: EdgeInsets.all(screenH / (screenH / 10)),
                        margin: EdgeInsets.only(
                          left: screenW / (screenW / 5),
                          right: screenW / (screenW / 10),
                          bottom: screenH / (screenH / 10),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              screenH / (screenH / 15),
                            ),
                            // boxShadow: const [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     blurRadius: 5.0,
                            //     offset: Offset(0, 4),
                            //   ),
                            // ]
                             ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                              text: 'Egyption side ',
                              color: Colors.black,
                            ),
                            vSpace(screenH / (screenH / 10)),
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
                            vSpace(screenH / (screenH / 10)),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
