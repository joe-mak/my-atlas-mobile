import '/components/meal_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meal_history_widget.dart' show MealHistoryWidget;
import 'package:flutter/material.dart';

class MealHistoryModel extends FlutterFlowModel<MealHistoryWidget> {
  ///  State fields for stateful widgets in this page.

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
    mealCardModel1 = createModel(context, () => MealCardModel());
    mealCardModel2 = createModel(context, () => MealCardModel());
    mealCardModel3 = createModel(context, () => MealCardModel());
    mealCardModel4 = createModel(context, () => MealCardModel());
  }

  @override
  void dispose() {
    mealCardModel1.dispose();
    mealCardModel2.dispose();
    mealCardModel3.dispose();
    mealCardModel4.dispose();
  }
}
