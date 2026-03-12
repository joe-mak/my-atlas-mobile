import '/components/alert_card_widget.dart';
import '/components/analyze_stat_widget.dart';
import '/components/card_analyze_widget.dart';
import '/components/list_legend_widget.dart';
import '/components/noti_card_widget.dart';
import '/components/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'details_widget.dart' show DetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this page.

  List<u_i_library_3c2hbt_data_schema.DonutChartDataStruct> donutchart = [];
  void addToDonutchart(
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      donutchart.add(item);
  void removeFromDonutchart(
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      donutchart.remove(item);
  void removeAtIndexFromDonutchart(int index) => donutchart.removeAt(index);
  void insertAtIndexInDonutchart(int index,
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      donutchart.insert(index, item);
  void updateDonutchartAtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.DonutChartDataStruct)
              updateFn) =>
      donutchart[index] = updateFn(donutchart[index]);

  List<Color> colordonutchart = [
    Color(4294918722),
    Color(4284035366),
    Color(4280126315),
    Color(4285536676),
    Color(4294944000)
  ];
  void addToColordonutchart(Color item) => colordonutchart.add(item);
  void removeFromColordonutchart(Color item) => colordonutchart.remove(item);
  void removeAtIndexFromColordonutchart(int index) =>
      colordonutchart.removeAt(index);
  void insertAtIndexInColordonutchart(int index, Color item) =>
      colordonutchart.insert(index, item);
  void updateColordonutchartAtIndex(int index, Function(Color) updateFn) =>
      colordonutchart[index] = updateFn(colordonutchart[index]);

  ///  State fields for stateful widgets in this page.

  // Model for analyze_stat component.
  late AnalyzeStatModel analyzeStatModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for status_card component.
  late StatusCardModel statusCardModel;
  // Model for noti_card component.
  late NotiCardModel notiCardModel1;
  // Model for noti_card component.
  late NotiCardModel notiCardModel2;
  // Model for noti_card component.
  late NotiCardModel notiCardModel3;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for list_legend component.
  late ListLegendModel listLegendModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for card_analyze component.
  late CardAnalyzeModel cardAnalyzeModel1;
  // Model for card_analyze component.
  late CardAnalyzeModel cardAnalyzeModel2;
  // Model for alert_card component.
  late AlertCardModel alertCardModel;

  @override
  void initState(BuildContext context) {
    analyzeStatModel = createModel(context, () => AnalyzeStatModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    notiCardModel1 = createModel(context, () => NotiCardModel());
    notiCardModel2 = createModel(context, () => NotiCardModel());
    notiCardModel3 = createModel(context, () => NotiCardModel());
    listLegendModel = createModel(context, () => ListLegendModel());
    cardAnalyzeModel1 = createModel(context, () => CardAnalyzeModel());
    cardAnalyzeModel2 = createModel(context, () => CardAnalyzeModel());
    alertCardModel = createModel(context, () => AlertCardModel());
  }

  @override
  void dispose() {
    analyzeStatModel.dispose();
    expandableExpandableController1.dispose();
    statusCardModel.dispose();
    notiCardModel1.dispose();
    notiCardModel2.dispose();
    notiCardModel3.dispose();
    expandableExpandableController2.dispose();
    listLegendModel.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    cardAnalyzeModel1.dispose();
    cardAnalyzeModel2.dispose();
    alertCardModel.dispose();
  }
}
