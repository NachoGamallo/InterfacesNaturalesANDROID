import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'alumn_subjects_tutorial_widget.dart' show AlumnSubjectsTutorialWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class AlumnSubjectsTutorialModel
    extends FlutterFlowModel<AlumnSubjectsTutorialWidget> {
  ///  Local state fields for this page.

  bool tempBool = true;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tutorialPreviewSubjectsController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tutorialPreviewSubjectsController?.finish();
  }
}
