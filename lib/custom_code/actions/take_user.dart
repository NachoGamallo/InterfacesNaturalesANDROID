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

Future<dynamic> takeUser(
  String mail,
  String password,
) async {
  final supabase = Supabase.instance.client;
  final data = await supabase
      .from('user')
      .select('*')
      .eq('mail', mail)
      .eq('password', password)
      .limit(1)
      .single();
  return data;
}
