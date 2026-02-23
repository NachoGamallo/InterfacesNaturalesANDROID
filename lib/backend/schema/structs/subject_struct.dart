// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubjectStruct extends BaseStruct {
  SubjectStruct({
    int? id,
    String? name,
    String? desc,
    int? year,
    int? careerId,
    int? teacherId,
  })  : _id = id,
        _name = name,
        _desc = desc,
        _year = year,
        _careerId = careerId,
        _teacherId = teacherId;

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

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "career_id" field.
  int? _careerId;
  int get careerId => _careerId ?? 0;
  set careerId(int? val) => _careerId = val;

  void incrementCareerId(int amount) => careerId = careerId + amount;

  bool hasCareerId() => _careerId != null;

  // "teacher_id" field.
  int? _teacherId;
  int get teacherId => _teacherId ?? 0;
  set teacherId(int? val) => _teacherId = val;

  void incrementTeacherId(int amount) => teacherId = teacherId + amount;

  bool hasTeacherId() => _teacherId != null;

  static SubjectStruct fromMap(Map<String, dynamic> data) => SubjectStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        desc: data['desc'] as String?,
        year: castToType<int>(data['year']),
        careerId: castToType<int>(data['career_id']),
        teacherId: castToType<int>(data['teacher_id']),
      );

  static SubjectStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubjectStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'desc': _desc,
        'year': _year,
        'career_id': _careerId,
        'teacher_id': _teacherId,
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
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'career_id': serializeParam(
          _careerId,
          ParamType.int,
        ),
        'teacher_id': serializeParam(
          _teacherId,
          ParamType.int,
        ),
      }.withoutNulls;

  static SubjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubjectStruct(
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
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        careerId: deserializeParam(
          data['career_id'],
          ParamType.int,
          false,
        ),
        teacherId: deserializeParam(
          data['teacher_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SubjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubjectStruct &&
        id == other.id &&
        name == other.name &&
        desc == other.desc &&
        year == other.year &&
        careerId == other.careerId &&
        teacherId == other.teacherId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, desc, year, careerId, teacherId]);
}

SubjectStruct createSubjectStruct({
  int? id,
  String? name,
  String? desc,
  int? year,
  int? careerId,
  int? teacherId,
}) =>
    SubjectStruct(
      id: id,
      name: name,
      desc: desc,
      year: year,
      careerId: careerId,
      teacherId: teacherId,
    );
