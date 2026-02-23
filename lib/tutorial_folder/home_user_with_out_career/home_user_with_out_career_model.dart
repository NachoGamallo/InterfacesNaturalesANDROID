import '/components/career_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_user_with_out_career_widget.dart' show HomeUserWithOutCareerWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomeUserWithOutCareerModel
    extends FlutterFlowModel<HomeUserWithOutCareerWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homeAlumnWithOutCareerController;
  // Model for careerCard component.
  late CareerCardModel careerCardModel1;
  // Model for careerCard component.
  late CareerCardModel careerCardModel2;

  @override
  void initState(BuildContext context) {
    careerCardModel1 = createModel(context, () => CareerCardModel());
    careerCardModel2 = createModel(context, () => CareerCardModel());
  }

  @override
  void dispose() {
    homeAlumnWithOutCareerController?.finish();
    careerCardModel1.dispose();
    careerCardModel2.dispose();
  }
}
