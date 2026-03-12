import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/navbar/navbar_widget.dart';
import '/index.dart';
import 'scan_widget.dart' show ScanWidget;
import 'package:flutter/material.dart';

class ScanModel extends FlutterFlowModel<ScanWidget> {
  ///  State fields for stateful widgets in this page.

  var scan = '';
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
