import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'food_delevry_state.dart';

class FoodDelevryCubit extends Cubit<FoodDelevryState> {
  FoodDelevryCubit() : super(FoodDelevryInitial());
  static FoodDelevryCubit get(context) => BlocProvider.of(context);

  PageController sliderController = PageController(
    viewportFraction: .85,
  );
  int currentSliderPage = 0;
  void chanegSliderPage(index) {
    currentSliderPage = index;
    emit(ChangeSliderPageState());
  }
  //------------------selected list item food details---

  bool isExpanded = false;
  void changeTextHeight() {
    isExpanded = !isExpanded;
    emit(changeTextHeightstate());
  }
}
