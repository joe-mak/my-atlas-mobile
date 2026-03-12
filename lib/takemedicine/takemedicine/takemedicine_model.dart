import '/flutter_flow/flutter_flow_util.dart';
import '/takemedicine/widget/add_drug_buttton/add_drug_buttton_widget.dart';
import '/index.dart';
import 'takemedicine_widget.dart' show TakemedicineWidget;
import 'package:flutter/material.dart';

class TakemedicineModel extends FlutterFlowModel<TakemedicineWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue12;
  // State field(s) for Checkbox widget.
  bool? checkboxValue13;
  // State field(s) for Checkbox widget.
  bool? checkboxValue14;
  // State field(s) for Checkbox widget.
  bool? checkboxValue15;
  // State field(s) for Checkbox widget.
  bool? checkboxValue16;
  // State field(s) for Checkbox widget.
  bool? checkboxValue17;
  // State field(s) for Checkbox widget.
  bool? checkboxValue18;
  // State field(s) for Checkbox widget.
  bool? checkboxValue19;
  // State field(s) for Checkbox widget.
  bool? checkboxValue20;
  // State field(s) for Checkbox widget.
  bool? checkboxValue21;
  // State field(s) for Checkbox widget.
  bool? checkboxValue22;
  // State field(s) for Checkbox widget.
  bool? checkboxValue23;
  // State field(s) for Checkbox widget.
  bool? checkboxValue24;
  // State field(s) for Checkbox widget.
  bool? checkboxValue25;
  // State field(s) for Checkbox widget.
  bool? checkboxValue26;
  // State field(s) for Checkbox widget.
  bool? checkboxValue27;
  // State field(s) for Checkbox widget.
  bool? checkboxValue28;
  // State field(s) for Checkbox widget.
  bool? checkboxValue29;
  // State field(s) for Checkbox widget.
  bool? checkboxValue30;
  // State field(s) for Checkbox widget.
  bool? checkboxValue31;
  // State field(s) for Checkbox widget.
  bool? checkboxValue32;
  // State field(s) for Checkbox widget.
  bool? checkboxValue33;
  // State field(s) for Checkbox widget.
  bool? checkboxValue34;
  // State field(s) for Checkbox widget.
  bool? checkboxValue35;
  // State field(s) for Checkbox widget.
  bool? checkboxValue36;
  // State field(s) for Checkbox widget.
  bool? checkboxValue37;
  // State field(s) for Checkbox widget.
  bool? checkboxValue38;
  // State field(s) for Checkbox widget.
  bool? checkboxValue39;
  // State field(s) for Checkbox widget.
  bool? checkboxValue40;
  // State field(s) for Checkbox widget.
  bool? checkboxValue41;
  // State field(s) for Checkbox widget.
  bool? checkboxValue42;
  // State field(s) for Checkbox widget.
  bool? checkboxValue43;
  // State field(s) for Checkbox widget.
  bool? checkboxValue44;
  // Model for add_drug_buttton component.
  late AddDrugButttonModel addDrugButttonModel;

  @override
  void initState(BuildContext context) {
    addDrugButttonModel = createModel(context, () => AddDrugButttonModel());
  }

  @override
  void dispose() {
    addDrugButttonModel.dispose();
  }
}
