import '/flutter_flow/flutter_flow_util.dart';
import 'typing_email_widget.dart' show TypingEmailWidget;
import 'package:flutter/material.dart';

class TypingEmailModel extends FlutterFlowModel<TypingEmailWidget> {
  ///  State fields for stateful widgets in this component.

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
