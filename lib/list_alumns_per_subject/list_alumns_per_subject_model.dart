import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'list_alumns_per_subject_widget.dart' show ListAlumnsPerSubjectWidget;
import 'package:flutter/material.dart';

class ListAlumnsPerSubjectModel
    extends FlutterFlowModel<ListAlumnsPerSubjectWidget> {
  ///  Local state fields for this page.

  List<UserStruct> listAlumns = [];
  void addToListAlumns(UserStruct item) => listAlumns.add(item);
  void removeFromListAlumns(UserStruct item) => listAlumns.remove(item);
  void removeAtIndexFromListAlumns(int index) => listAlumns.removeAt(index);
  void insertAtIndexInListAlumns(int index, UserStruct item) =>
      listAlumns.insert(index, item);
  void updateListAlumnsAtIndex(int index, Function(UserStruct) updateFn) =>
      listAlumns[index] = updateFn(listAlumns[index]);

  CareerStruct? career;
  void updateCareerStruct(Function(CareerStruct) updateFn) {
    updateFn(career ??= CareerStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCareerByID] action in listAlumnsPerSubject widget.
  dynamic careerID;
  // Stores action output result for [Custom Action - getStudentsOfSubject] action in listAlumnsPerSubject widget.
  List<dynamic>? users;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
