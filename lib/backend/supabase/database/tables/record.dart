import '../database.dart';

class RecordTable extends SupabaseTable<RecordRow> {
  @override
  String get tableName => 'record';

  @override
  RecordRow createRow(Map<String, dynamic> data) => RecordRow(data);
}

class RecordRow extends SupabaseDataRow {
  RecordRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get alumnId => getField<int>('alumn_id')!;
  set alumnId(int value) => setField<int>('alumn_id', value);

  int get subjectId => getField<int>('subject_id')!;
  set subjectId(int value) => setField<int>('subject_id', value);

  int? get grade => getField<int>('grade');
  set grade(int? value) => setField<int>('grade', value);
}
