// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateUserGrade(
  int userId,
  int subjectId,
  int grade,
) async {
  final supabase = Supabase.instance.client;
  await supabase
      .from('record')
      .update({'grade': grade})
      .eq('alumn_id', userId)
      .eq('subject_id', subjectId);
}
