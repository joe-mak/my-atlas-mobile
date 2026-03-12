import '/flutter_flow/flutter_flow_util.dart';
import '/takemedicine/widget/add_drug_buttton/add_drug_buttton_widget.dart';
import '/takemedicine/widget/mission_inprogress/mission_inprogress_widget.dart';
import '/takemedicine/widget/mission_nonstart/mission_nonstart_widget.dart';
import '/takemedicine/widget/mission_success/mission_success_widget.dart';
import '/takemedicine/widget/mission_unsuccess/mission_unsuccess_widget.dart';
import '/index.dart';
import 'calendar_widget.dart' show CalendarWidget;
import 'package:flutter/material.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for add_drug_buttton component.
  late AddDrugButttonModel addDrugButttonModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for mission_inprogress component.
  late MissionInprogressModel missionInprogressModel;
  // Model for mission_unsuccess component.
  late MissionUnsuccessModel missionUnsuccessModel;
  // Model for mission_success component.
  late MissionSuccessModel missionSuccessModel;
  // Model for mission_nonstart component.
  late MissionNonstartModel missionNonstartModel;

  @override
  void initState(BuildContext context) {
    addDrugButttonModel = createModel(context, () => AddDrugButttonModel());
    missionInprogressModel =
        createModel(context, () => MissionInprogressModel());
    missionUnsuccessModel = createModel(context, () => MissionUnsuccessModel());
    missionSuccessModel = createModel(context, () => MissionSuccessModel());
    missionNonstartModel = createModel(context, () => MissionNonstartModel());
  }

  @override
  void dispose() {
    addDrugButttonModel.dispose();
    missionInprogressModel.dispose();
    missionUnsuccessModel.dispose();
    missionSuccessModel.dispose();
    missionNonstartModel.dispose();
  }
}
