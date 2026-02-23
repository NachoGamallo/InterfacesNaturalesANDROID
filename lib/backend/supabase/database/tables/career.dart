import '../database.dart';

class CareerTable extends SupabaseTable<CareerRow> {
  @override
  String get tableName => 'career';

  @override
  CareerRow createRow(Map<String, dynamic> data) => CareerRow(data);
}

class CareerRow extends SupabaseDataRow {
  CareerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CareerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  int get yearsDuration => getField<int>('years_duration')!;
  set yearsDuration(int value) => setField<int>('years_duration', value);
}
