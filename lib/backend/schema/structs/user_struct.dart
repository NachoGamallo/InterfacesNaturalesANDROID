// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? mail,
    String? name,
    String? surnames,
    String? password,
    String? rol,
    int? departmentId,
    int? careerId,
    int? age,
  })  : _id = id,
        _mail = mail,
        _name = name,
        _surnames = surnames,
        _password = password,
        _rol = rol,
        _departmentId = departmentId,
        _careerId = careerId,
        _age = age;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  set mail(String? val) => _mail = val;

  bool hasMail() => _mail != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "surnames" field.
  String? _surnames;
  String get surnames => _surnames ?? '';
  set surnames(String? val) => _surnames = val;

  bool hasSurnames() => _surnames != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  set rol(String? val) => _rol = val;

  bool hasRol() => _rol != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "career_id" field.
  int? _careerId;
  int get careerId => _careerId ?? 0;
  set careerId(int? val) => _careerId = val;

  void incrementCareerId(int amount) => careerId = careerId + amount;

  bool hasCareerId() => _careerId != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        mail: data['mail'] as String?,
        name: data['name'] as String?,
        surnames: data['surnames'] as String?,
        password: data['password'] as String?,
        rol: data['rol'] as String?,
        departmentId: castToType<int>(data['department_id']),
        careerId: castToType<int>(data['career_id']),
        age: castToType<int>(data['age']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'mail': _mail,
        'name': _name,
        'surnames': _surnames,
        'password': _password,
        'rol': _rol,
        'department_id': _departmentId,
        'career_id': _careerId,
        'age': _age,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'mail': serializeParam(
          _mail,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'surnames': serializeParam(
          _surnames,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.String,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'career_id': serializeParam(
          _careerId,
          ParamType.int,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        mail: deserializeParam(
          data['mail'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        surnames: deserializeParam(
          data['surnames'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        rol: deserializeParam(
          data['rol'],
          ParamType.String,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        careerId: deserializeParam(
          data['career_id'],
          ParamType.int,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        mail == other.mail &&
        name == other.name &&
        surnames == other.surnames &&
        password == other.password &&
        rol == other.rol &&
        departmentId == other.departmentId &&
        careerId == other.careerId &&
        age == other.age;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, mail, name, surnames, password, rol, departmentId, careerId, age]);
}

UserStruct createUserStruct({
  int? id,
  String? mail,
  String? name,
  String? surnames,
  String? password,
  String? rol,
  int? departmentId,
  int? careerId,
  int? age,
}) =>
    UserStruct(
      id: id,
      mail: mail,
      name: name,
      surnames: surnames,
      password: password,
      rol: rol,
      departmentId: departmentId,
      careerId: careerId,
      age: age,
    );
