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

Future<List<dynamic>> getSubjectsWithAvaliableFilters(
  int idCareer,
  int? idUser,
  int? yearFiltered,
) async {
  final supabase = Supabase.instance.client;

  final hasUser = idUser != null && idUser > 0;
  final hasYear = yearFiltered != null && yearFiltered > 0;

  var query = supabase
      .from('subject')
      .select(hasUser ? '*, record!inner(alumn_id)' : '*')
      .eq('career_id', idCareer);

  if (hasYear) {
    query = query.eq('year', yearFiltered);
  }

  if (hasUser) {
    query = query.eq('record.alumn_id', idUser);
  }

  final result = await query;

  return List<dynamic>.from(result);
}
