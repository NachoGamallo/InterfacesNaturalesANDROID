import '../database.dart';

class SubjectTable extends SupabaseTable<SubjectRow> {
  @override
  String get tableName => 'subject';

  @override
  SubjectRow createRow(Map<String, dynamic> data) => SubjectRow(data);
}

class SubjectRow extends SupabaseDataRow {
  SubjectRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubjectTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  int get year => getField<int>('year')!;
  set year(int value) => setField<int>('year', value);

  int get careerId => getField<int>('career_id')!;
  set careerId(int value) => setField<int>('career_id', value);

  int? get teacherId => getField<int>('teacher_id');
  set teacherId(int? value) => setField<int>('teacher_id', value);
}
