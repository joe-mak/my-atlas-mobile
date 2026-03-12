import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_bloodpressure_widget.dart' show AddBloodpressureWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddBloodpressureModel extends FlutterFlowModel<AddBloodpressureWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController.dispose();
  }
}
