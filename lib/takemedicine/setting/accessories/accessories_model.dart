import '/flutter_flow/flutter_flow_util.dart';
import '/takemedicine/setting/add_device/add_device_widget.dart';
import 'accessories_widget.dart' show AccessoriesWidget;
import 'package:flutter/material.dart';

class AccessoriesModel extends FlutterFlowModel<AccessoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for add_device component.
  late AddDeviceModel addDeviceModel;

  @override
  void initState(BuildContext context) {
    addDeviceModel = createModel(context, () => AddDeviceModel());
  }

  @override
  void dispose() {
    addDeviceModel.dispose();
  }
}
