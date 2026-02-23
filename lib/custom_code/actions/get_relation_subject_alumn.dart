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

Future<dynamic?> getRelationSubjectAlumn(
  int idAlumn,
  int idSubject,
) async {
  final supabase = Supabase.instance.client;
  final data = await supabase
      .from('record')
      .select()
      .eq('subject_id', idSubject)
      .eq('alumn_id', idAlumn)
      .limit(1)
      .maybeSingle();

  return data;
}
