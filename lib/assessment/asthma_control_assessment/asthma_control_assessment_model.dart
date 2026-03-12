import '/assessment/choicequestion1/choicequestion1_widget.dart';
import '/assessment/choicequestion2/choicequestion2_widget.dart';
import '/assessment/choicequestion3/choicequestion3_widget.dart';
import '/assessment/choicequestion4/choicequestion4_widget.dart';
import '/assessment/choicequestion5/choicequestion5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'asthma_control_assessment_widget.dart'
    show AsthmaControlAssessmentWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AsthmaControlAssessmentModel
    extends FlutterFlowModel<AsthmaControlAssessmentWidget> {
  ///  Local state fields for this page.

  bool? voicequestion1 = false;

  int? pageview = 1;

  bool? voicequestion2 = false;

  bool voicequestion3 = false;

  bool voicequestion4 = false;

  bool voicequestion5 = false;

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer1;
  // Model for choicequestion1 component.
  late Choicequestion1Model choicequestion1Model1;
  // Model for choicequestion1 component.
  late Choicequestion1Model choicequestion1Model2;
  // Model for choicequestion1 component.
  late Choicequestion1Model choicequestion1Model3;
  // Model for choicequestion1 component.
  late Choicequestion1Model choicequestion1Model4;
  // Model for choicequestion1 component.
  late Choicequestion1Model choicequestion1Model5;
  AudioPlayer? soundPlayer2;
  // Model for choicequestion2 component.
  late Choicequestion2Model choicequestion2Model1;
  // Model for choicequestion2 component.
  late Choicequestion2Model choicequestion2Model2;
  // Model for choicequestion2 component.
  late Choicequestion2Model choicequestion2Model3;
  // Model for choicequestion2 component.
  late Choicequestion2Model choicequestion2Model4;
  // Model for choicequestion2 component.
  late Choicequestion2Model choicequestion2Model5;
  AudioPlayer? soundPlayer3;
  // Model for choicequestion3 component.
  late Choicequestion3Model choicequestion3Model1;
  // Model for choicequestion3 component.
  late Choicequestion3Model choicequestion3Model2;
  // Model for choicequestion3 component.
  late Choicequestion3Model choicequestion3Model3;
  // Model for choicequestion3 component.
  late Choicequestion3Model choicequestion3Model4;
  // Model for choicequestion3 component.
  late Choicequestion3Model choicequestion3Model5;
  AudioPlayer? soundPlayer4;
  // Model for choicequestion4 component.
  late Choicequestion4Model choicequestion4Model1;
  // Model for choicequestion4 component.
  late Choicequestion4Model choicequestion4Model2;
  // Model for choicequestion4 component.
  late Choicequestion4Model choicequestion4Model3;
  // Model for choicequestion4 component.
  late Choicequestion4Model choicequestion4Model4;
  // Model for choicequestion4 component.
  late Choicequestion4Model choicequestion4Model5;
  AudioPlayer? soundPlayer5;
  // Model for choicequestion5 component.
  late Choicequestion5Model choicequestion5Model1;
  // Model for choicequestion5 component.
  late Choicequestion5Model choicequestion5Model2;
  // Model for choicequestion5 component.
  late Choicequestion5Model choicequestion5Model3;
  // Model for choicequestion5 component.
  late Choicequestion5Model choicequestion5Model4;
  // Model for choicequestion5 component.
  late Choicequestion5Model choicequestion5Model5;

  @override
  void initState(BuildContext context) {
    choicequestion1Model1 = createModel(context, () => Choicequestion1Model());
    choicequestion1Model2 = createModel(context, () => Choicequestion1Model());
    choicequestion1Model3 = createModel(context, () => Choicequestion1Model());
    choicequestion1Model4 = createModel(context, () => Choicequestion1Model());
    choicequestion1Model5 = createModel(context, () => Choicequestion1Model());
    choicequestion2Model1 = createModel(context, () => Choicequestion2Model());
    choicequestion2Model2 = createModel(context, () => Choicequestion2Model());
    choicequestion2Model3 = createModel(context, () => Choicequestion2Model());
    choicequestion2Model4 = createModel(context, () => Choicequestion2Model());
    choicequestion2Model5 = createModel(context, () => Choicequestion2Model());
    choicequestion3Model1 = createModel(context, () => Choicequestion3Model());
    choicequestion3Model2 = createModel(context, () => Choicequestion3Model());
    choicequestion3Model3 = createModel(context, () => Choicequestion3Model());
    choicequestion3Model4 = createModel(context, () => Choicequestion3Model());
    choicequestion3Model5 = createModel(context, () => Choicequestion3Model());
    choicequestion4Model1 = createModel(context, () => Choicequestion4Model());
    choicequestion4Model2 = createModel(context, () => Choicequestion4Model());
    choicequestion4Model3 = createModel(context, () => Choicequestion4Model());
    choicequestion4Model4 = createModel(context, () => Choicequestion4Model());
    choicequestion4Model5 = createModel(context, () => Choicequestion4Model());
    choicequestion5Model1 = createModel(context, () => Choicequestion5Model());
    choicequestion5Model2 = createModel(context, () => Choicequestion5Model());
    choicequestion5Model3 = createModel(context, () => Choicequestion5Model());
    choicequestion5Model4 = createModel(context, () => Choicequestion5Model());
    choicequestion5Model5 = createModel(context, () => Choicequestion5Model());
  }

  @override
  void dispose() {
    choicequestion1Model1.dispose();
    choicequestion1Model2.dispose();
    choicequestion1Model3.dispose();
    choicequestion1Model4.dispose();
    choicequestion1Model5.dispose();
    choicequestion2Model1.dispose();
    choicequestion2Model2.dispose();
    choicequestion2Model3.dispose();
    choicequestion2Model4.dispose();
    choicequestion2Model5.dispose();
    choicequestion3Model1.dispose();
    choicequestion3Model2.dispose();
    choicequestion3Model3.dispose();
    choicequestion3Model4.dispose();
    choicequestion3Model5.dispose();
    choicequestion4Model1.dispose();
    choicequestion4Model2.dispose();
    choicequestion4Model3.dispose();
    choicequestion4Model4.dispose();
    choicequestion4Model5.dispose();
    choicequestion5Model1.dispose();
    choicequestion5Model2.dispose();
    choicequestion5Model3.dispose();
    choicequestion5Model4.dispose();
    choicequestion5Model5.dispose();
  }
}
