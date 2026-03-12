import '/components/meal_card_widget.dart';
import '/components/meal_stats_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'food_lens_widget.dart' show FoodLensWidget;
import 'package:flutter/material.dart';

class FoodLensModel extends FlutterFlowModel<FoodLensWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for meal_stats component.
  late MealStatsModel mealStatsModel;
  // Model for meal_card component.
  late MealCardModel mealCardModel1;
  // Model for meal_card component.
  late MealCardModel mealCardModel2;
  // Model for meal_card component.
  late MealCardModel mealCardModel3;
  // Model for meal_card component.
  late MealCardModel mealCardModel4;

  @override
  void initState(BuildContext context) {
    mealStatsModel = createModel(context, () => MealStatsModel());
    mealCardModel1 = createModel(context, () => MealCardModel());
    mealCardModel2 = createModel(context, () => MealCardModel());
    mealCardModel3 = createModel(context, () => MealCardModel());
    mealCardModel4 = createModel(context, () => MealCardModel());
  }

  @override
  void dispose() {
    mealStatsModel.dispose();
    mealCardModel1.dispose();
    mealCardModel2.dispose();
    mealCardModel3.dispose();
    mealCardModel4.dispose();
  }
}
