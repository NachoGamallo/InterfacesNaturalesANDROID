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

Future addUserToSubject(
  int userId,
  int subjectId,
) async {
  final supabase = Supabase.instance.client;
  await supabase
      .from('record')
      .insert({'alumn_id': userId, 'subject_id': subjectId});
}
