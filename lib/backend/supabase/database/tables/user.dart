import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get mail => getField<String>('mail')!;
  set mail(String value) => setField<String>('mail', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get surnames => getField<String>('surnames')!;
  set surnames(String value) => setField<String>('surnames', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  String get rol => getField<String>('rol')!;
  set rol(String value) => setField<String>('rol', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  int? get careerId => getField<int>('career_id');
  set careerId(int? value) => setField<int>('career_id', value);

  int get age => getField<int>('age')!;
  set age(int value) => setField<int>('age', value);
}
