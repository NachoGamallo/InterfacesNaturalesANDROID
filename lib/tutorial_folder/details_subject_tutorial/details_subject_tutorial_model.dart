import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'details_subject_tutorial_widget.dart' show DetailsSubjectTutorialWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class DetailsSubjectTutorialModel
    extends FlutterFlowModel<DetailsSubjectTutorialWidget> {
  ///  Local state fields for this page.

  bool tempBool = true;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tutorialSubjectDetailsController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tutorialSubjectDetailsController?.finish();
  }
}
