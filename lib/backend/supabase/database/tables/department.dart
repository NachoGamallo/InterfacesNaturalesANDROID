import '../database.dart';

class DepartmentTable extends SupabaseTable<DepartmentRow> {
  @override
  String get tableName => 'department';

  @override
  DepartmentRow createRow(Map<String, dynamic> data) => DepartmentRow(data);
}

class DepartmentRow extends SupabaseDataRow {
  DepartmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);
}
