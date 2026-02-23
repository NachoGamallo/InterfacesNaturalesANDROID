// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CareerStruct extends BaseStruct {
  CareerStruct({
    int? id,
    String? name,
    String? desc,
    int? yearsDuration,
  })  : _id = id,
        _name = name,
        _desc = desc,
        _yearsDuration = yearsDuration;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "years_duration" field.
  int? _yearsDuration;
  int get yearsDuration => _yearsDuration ?? 0;
  set yearsDuration(int? val) => _yearsDuration = val;

  void incrementYearsDuration(int amount) =>
      yearsDuration = yearsDuration + amount;

  bool hasYearsDuration() => _yearsDuration != null;

  static CareerStruct fromMap(Map<String, dynamic> data) => CareerStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        desc: data['desc'] as String?,
        yearsDuration: castToType<int>(data['years_duration']),
      );

  static CareerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CareerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'desc': _desc,
        'years_duration': _yearsDuration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'years_duration': serializeParam(
          _yearsDuration,
          ParamType.int,
        ),
      }.withoutNulls;

  static CareerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CareerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        yearsDuration: deserializeParam(
          data['years_duration'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CareerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CareerStruct &&
        id == other.id &&
        name == other.name &&
        desc == other.desc &&
        yearsDuration == other.yearsDuration;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, desc, yearsDuration]);
}

CareerStruct createCareerStruct({
  int? id,
  String? name,
  String? desc,
  int? yearsDuration,
}) =>
    CareerStruct(
      id: id,
      name: name,
      desc: desc,
      yearsDuration: yearsDuration,
    );
