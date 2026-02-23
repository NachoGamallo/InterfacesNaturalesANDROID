import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_teacher_widget.dart' show HomeTeacherWidget;
import 'package:flutter/material.dart';

class HomeTeacherModel extends FlutterFlowModel<HomeTeacherWidget> {
  ///  Local state fields for this page.

  DepartmentStruct? teacherDepartment;
  void updateTeacherDepartmentStruct(Function(DepartmentStruct) updateFn) {
    updateFn(teacherDepartment ??= DepartmentStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getTeacherSubjects] action in homeTeacher widget.
  List<dynamic>? listSubjectsTeacher;
  // Stores action output result for [Custom Action - getDepartmentPerID] action in homeTeacher widget.
  dynamic actualTeacherDepartment;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
