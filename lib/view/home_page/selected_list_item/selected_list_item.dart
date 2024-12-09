import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevry_app/view/home_page/selected_list_item/selected_list_item_details.dart';

import '../../../contraller/food_delevry/food_delevry_cubit.dart';

//screenW(screen width) screenH(screen height)
// screenH/(screenH/value);
// screenW/(screenW/value);
class SelectedListItem extends StatelessWidget {
  const SelectedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenW = MediaQuery.sizeOf(context).width;
    double screenH = MediaQuery.sizeOf(context).width;
    return BlocBuilder<FoodDelevryCubit, FoodDelevryState>(
      builder: (context, state) {
        var cubit = FoodDelevryCubit.get(context);
        return Scaffold(
          body: Stack(
            children: [
              //--------------------1
              Container(
                margin: EdgeInsets.only(top: 0, left: 0, right: 0),
                height: screenH / (screenH / 350),
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: AssetImage('assets/images/3.webp'),
                      fit: BoxFit.cover,
                    )),
              ),
              //---------------2
              Container(
                margin: EdgeInsets.only(top: screenH / (screenH / 35), left:screenW / (screenW / 20), right: screenW / (screenW / 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(screenH / (screenH / 25)),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey[300],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(screenH / (screenH / 25)),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey[300],
                          )),
                    )
                  ],
                ),
              ),
              //--------3--------------------------
              Container(
                margin: EdgeInsets.only(top: 300, left: 0, right: 0),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: SelectedListItemDetails(screenH, screenW, cubit),
              ),
              //---------------------------4
              
            ],
          ),
          floatingActionButton: Container(
            margin: EdgeInsets.only(bottom: 0,left: 30,right: 20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            height: 80,
          ),
        );
      },
    );
  }
}
