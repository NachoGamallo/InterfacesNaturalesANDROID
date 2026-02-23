// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordStruct extends BaseStruct {
  RecordStruct({
    int? id,
    int? alumnId,
    int? subjectId,
    int? grade,
  })  : _id = id,
        _alumnId = alumnId,
        _subjectId = subjectId,
        _grade = grade;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "alumn_id" field.
  int? _alumnId;
  int get alumnId => _alumnId ?? 0;
  set alumnId(int? val) => _alumnId = val;

  void incrementAlumnId(int amount) => alumnId = alumnId + amount;

  bool hasAlumnId() => _alumnId != null;

  // "subject_id" field.
  int? _subjectId;
  int get subjectId => _subjectId ?? 0;
  set subjectId(int? val) => _subjectId = val;

  void incrementSubjectId(int amount) => subjectId = subjectId + amount;

  bool hasSubjectId() => _subjectId != null;

  // "grade" field.
  int? _grade;
  int get grade => _grade ?? 0;
  set grade(int? val) => _grade = val;

  void incrementGrade(int amount) => grade = grade + amount;

  bool hasGrade() => _grade != null;

  static RecordStruct fromMap(Map<String, dynamic> data) => RecordStruct(
        id: castToType<int>(data['id']),
        alumnId: castToType<int>(data['alumn_id']),
        subjectId: castToType<int>(data['subject_id']),
        grade: castToType<int>(data['grade']),
      );

  static RecordStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecordStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'alumn_id': _alumnId,
        'subject_id': _subjectId,
        'grade': _grade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'alumn_id': serializeParam(
          _alumnId,
          ParamType.int,
        ),
        'subject_id': serializeParam(
          _subjectId,
          ParamType.int,
        ),
        'grade': serializeParam(
          _grade,
          ParamType.int,
        ),
      }.withoutNulls;

  static RecordStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecordStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        alumnId: deserializeParam(
          data['alumn_id'],
          ParamType.int,
          false,
        ),
        subjectId: deserializeParam(
          data['subject_id'],
          ParamType.int,
          false,
        ),
        grade: deserializeParam(
          data['grade'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RecordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecordStruct &&
        id == other.id &&
        alumnId == other.alumnId &&
        subjectId == other.subjectId &&
        grade == other.grade;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, alumnId, subjectId, grade]);
}

RecordStruct createRecordStruct({
  int? id,
  int? alumnId,
  int? subjectId,
  int? grade,
}) =>
    RecordStruct(
      id: id,
      alumnId: alumnId,
      subjectId: subjectId,
      grade: grade,
    );
