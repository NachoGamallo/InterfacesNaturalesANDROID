import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'alumn_subjects_widget.dart' show AlumnSubjectsWidget;
import 'package:flutter/material.dart';

class AlumnSubjectsModel extends FlutterFlowModel<AlumnSubjectsWidget> {
  ///  Local state fields for this page.

  int? yearFilter = 0;

  int? userActualSubjects;

  List<SubjectStruct> listSubjects = [];
  void addToListSubjects(SubjectStruct item) => listSubjects.add(item);
  void removeFromListSubjects(SubjectStruct item) => listSubjects.remove(item);
  void removeAtIndexFromListSubjects(int index) => listSubjects.removeAt(index);
  void insertAtIndexInListSubjects(int index, SubjectStruct item) =>
      listSubjects.insert(index, item);
  void updateListSubjectsAtIndex(int index, Function(SubjectStruct) updateFn) =>
      listSubjects[index] = updateFn(listSubjects[index]);

  List<SubjectStruct> listUserSubjects = [];
  void addToListUserSubjects(SubjectStruct item) => listUserSubjects.add(item);
  void removeFromListUserSubjects(SubjectStruct item) =>
      listUserSubjects.remove(item);
  void removeAtIndexFromListUserSubjects(int index) =>
      listUserSubjects.removeAt(index);
  void insertAtIndexInListUserSubjects(int index, SubjectStruct item) =>
      listUserSubjects.insert(index, item);
  void updateListUserSubjectsAtIndex(
          int index, Function(SubjectStruct) updateFn) =>
      listUserSubjects[index] = updateFn(listUserSubjects[index]);

  List<SubjectStruct> listWithAllSubjects = [];
  void addToListWithAllSubjects(SubjectStruct item) =>
      listWithAllSubjects.add(item);
  void removeFromListWithAllSubjects(SubjectStruct item) =>
      listWithAllSubjects.remove(item);
  void removeAtIndexFromListWithAllSubjects(int index) =>
      listWithAllSubjects.removeAt(index);
  void insertAtIndexInListWithAllSubjects(int index, SubjectStruct item) =>
      listWithAllSubjects.insert(index, item);
  void updateListWithAllSubjectsAtIndex(
          int index, Function(SubjectStruct) updateFn) =>
      listWithAllSubjects[index] = updateFn(listWithAllSubjects[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in AlumnSubjects widget.
  List<dynamic>? allSubjects;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in AlumnSubjects widget.
  List<dynamic>? subjectsByUser;
  // Stores action output result for [Custom Action - getNumSubjectsAlumn] action in AlumnSubjects widget.
  int? countSubjects;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYearAndAlumn1;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYear1;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYearAndAlumn2;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYear2;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYearAndAlumn3;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYear3;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYearAndAlumn4;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Container widget.
  List<dynamic>? filterOfYear4;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Text widget.
  List<dynamic>? filterOfYearAndAlumn;
  // Stores action output result for [Custom Action - getSubjectsWithAvaliableFilters] action in Text widget.
  List<dynamic>? filterOfYear;
  // Stores action output result for [Custom Action - getRelationSubjectAlumn] action in Button widget.
  dynamic relationExits;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
