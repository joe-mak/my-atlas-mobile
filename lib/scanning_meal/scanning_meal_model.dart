import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'scanning_meal_widget.dart' show ScanningMealWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ScanningMealModel extends FlutterFlowModel<ScanningMealWidget> {
  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer;
  bool isDataUploading_uploadData9a5 = false;
  FFUploadedFile uploadedLocalFile_uploadData9a5 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
