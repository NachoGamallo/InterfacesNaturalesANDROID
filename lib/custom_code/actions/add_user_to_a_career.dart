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

Future addUserToACareer(
  int careerId,
  int userId,
) async {
  final supabase = Supabase.instance.client;
  await supabase.from('user').update({'career_id': careerId}).eq('id', userId);
  final List data = await supabase
      .from('subject')
      .select()
      .eq('career_id', careerId)
      .eq('year', 1);

  for (final subject in data) {
    print(subject);
    await supabase.from('record').insert({
      'alumn_id': userId,
      'subject_id': subject['id'],
    });
  }
}
