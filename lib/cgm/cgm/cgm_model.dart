import '/cgm/card_reportaverage/card_reportaverage_widget.dart';
import '/cgm/card_reportmax/card_reportmax_widget.dart';
import '/cgm/card_reportmin/card_reportmin_widget.dart';
import '/cgm/card_reportstandard/card_reportstandard_widget.dart';
import '/cgm/tab_time/tab_time_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cgm_widget.dart' show CgmWidget;
import 'package:flutter/material.dart';

class CgmModel extends FlutterFlowModel<CgmWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tab_time component.
  late TabTimeModel tabTimeModel1;
  // Model for tab_time component.
  late TabTimeModel tabTimeModel2;
  // Model for tab_time component.
  late TabTimeModel tabTimeModel3;
  // Model for tab_time component.
  late TabTimeModel tabTimeModel4;
  // Model for card_reportaverage component.
  late CardReportaverageModel cardReportaverageModel;
  // Model for card_reportstandard component.
  late CardReportstandardModel cardReportstandardModel;
  // Model for card_reportmax component.
  late CardReportmaxModel cardReportmaxModel;
  // Model for card_reportmin component.
  late CardReportminModel cardReportminModel;

  @override
  void initState(BuildContext context) {
    tabTimeModel1 = createModel(context, () => TabTimeModel());
    tabTimeModel2 = createModel(context, () => TabTimeModel());
    tabTimeModel3 = createModel(context, () => TabTimeModel());
    tabTimeModel4 = createModel(context, () => TabTimeModel());
    cardReportaverageModel =
        createModel(context, () => CardReportaverageModel());
    cardReportstandardModel =
        createModel(context, () => CardReportstandardModel());
    cardReportmaxModel = createModel(context, () => CardReportmaxModel());
    cardReportminModel = createModel(context, () => CardReportminModel());
  }

  @override
  void dispose() {
    tabTimeModel1.dispose();
    tabTimeModel2.dispose();
    tabTimeModel3.dispose();
    tabTimeModel4.dispose();
    cardReportaverageModel.dispose();
    cardReportstandardModel.dispose();
    cardReportmaxModel.dispose();
    cardReportminModel.dispose();
  }
}
