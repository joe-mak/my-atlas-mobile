import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_spo2_widget.dart' show AddSpo2Widget;
import 'package:flutter/material.dart';

class AddSpo2Model extends FlutterFlowModel<AddSpo2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
