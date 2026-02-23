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

Future<int> getNumSubjectsAlumn(int idUser) async {
  final supabase = Supabase.instance.client;
  final data = await supabase
      .from('record')
      .select()
      .eq('alumn_id', idUser)
      .eqOrNull('grade', null);
  return data.length;
}
