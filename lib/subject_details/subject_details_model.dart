import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subject_details_widget.dart' show SubjectDetailsWidget;
import 'package:flutter/material.dart';

class SubjectDetailsModel extends FlutterFlowModel<SubjectDetailsWidget> {
  ///  Local state fields for this page.

  UserStruct? teacher;
  void updateTeacherStruct(Function(UserStruct) updateFn) {
    updateFn(teacher ??= UserStruct());
  }

  RecordStruct? record;
  void updateRecordStruct(Function(RecordStruct) updateFn) {
    updateFn(record ??= RecordStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getUserByID] action in SubjectDetails widget.
  dynamic teacherOBJ;
  // Stores action output result for [Custom Action - getRelationSubjectAlumn] action in SubjectDetails widget.
  dynamic subjectRelation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
