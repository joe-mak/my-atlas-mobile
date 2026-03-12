import '/assessment/choicequestion6/choicequestion6_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dyspnea_scoring_criteria_widget.dart' show DyspneaScoringCriteriaWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class DyspneaScoringCriteriaModel
    extends FlutterFlowModel<DyspneaScoringCriteriaWidget> {
  ///  Local state fields for this page.

  int? pageview = 1;

  bool voicequestion = false;

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer;
  // Model for choicequestion6 component.
  late Choicequestion6Model choicequestion6Model1;
  // Model for choicequestion6 component.
  late Choicequestion6Model choicequestion6Model2;
  // Model for choicequestion6 component.
  late Choicequestion6Model choicequestion6Model3;
  // Model for choicequestion6 component.
  late Choicequestion6Model choicequestion6Model4;
  // Model for choicequestion6 component.
  late Choicequestion6Model choicequestion6Model5;

  @override
  void initState(BuildContext context) {
    choicequestion6Model1 = createModel(context, () => Choicequestion6Model());
    choicequestion6Model2 = createModel(context, () => Choicequestion6Model());
    choicequestion6Model3 = createModel(context, () => Choicequestion6Model());
    choicequestion6Model4 = createModel(context, () => Choicequestion6Model());
    choicequestion6Model5 = createModel(context, () => Choicequestion6Model());
  }

  @override
  void dispose() {
    choicequestion6Model1.dispose();
    choicequestion6Model2.dispose();
    choicequestion6Model3.dispose();
    choicequestion6Model4.dispose();
    choicequestion6Model5.dispose();
  }
}
