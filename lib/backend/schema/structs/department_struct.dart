// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartmentStruct extends BaseStruct {
  DepartmentStruct({
    int? id,
    String? name,
    String? desc,
  })  : _id = id,
        _name = name,
        _desc = desc;

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

  static DepartmentStruct fromMap(Map<String, dynamic> data) =>
      DepartmentStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        desc: data['desc'] as String?,
      );

  static DepartmentStruct? maybeFromMap(dynamic data) => data is Map
      ? DepartmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'desc': _desc,
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
      }.withoutNulls;

  static DepartmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DepartmentStruct(
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
      );

  @override
  String toString() => 'DepartmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DepartmentStruct &&
        id == other.id &&
        name == other.name &&
        desc == other.desc;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, desc]);
}

DepartmentStruct createDepartmentStruct({
  int? id,
  String? name,
  String? desc,
}) =>
    DepartmentStruct(
      id: id,
      name: name,
      desc: desc,
    );
