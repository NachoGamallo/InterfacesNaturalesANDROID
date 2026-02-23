import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_user_widget.dart' show HomeUserWidget;
import 'package:flutter/material.dart';

class HomeUserModel extends FlutterFlowModel<HomeUserWidget> {
  ///  Local state fields for this page.

  List<CareerStruct> careersList = [];
  void addToCareersList(CareerStruct item) => careersList.add(item);
  void removeFromCareersList(CareerStruct item) => careersList.remove(item);
  void removeAtIndexFromCareersList(int index) => careersList.removeAt(index);
  void insertAtIndexInCareersList(int index, CareerStruct item) =>
      careersList.insert(index, item);
  void updateCareersListAtIndex(int index, Function(CareerStruct) updateFn) =>
      careersList[index] = updateFn(careersList[index]);

  CareerStruct? userCareer;
  void updateUserCareerStruct(Function(CareerStruct) updateFn) {
    updateFn(userCareer ??= CareerStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAllCareers] action in HomeUser widget.
  List<dynamic>? careers;
  // Stores action output result for [Custom Action - getCareerByID] action in HomeUser widget.
  dynamic userSelectedCareer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
