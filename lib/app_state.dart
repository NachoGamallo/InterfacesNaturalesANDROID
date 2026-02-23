import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  UserStruct _actualUser = UserStruct();
  UserStruct get actualUser => _actualUser;
  set actualUser(UserStruct value) {
    _actualUser = value;
  }

  void updateActualUserStruct(Function(UserStruct) updateFn) {
    updateFn(_actualUser);
  }

  List<SubjectStruct> _ListSubjects = [];
  List<SubjectStruct> get ListSubjects => _ListSubjects;
  set ListSubjects(List<SubjectStruct> value) {
    _ListSubjects = value;
  }

  void addToListSubjects(SubjectStruct value) {
    ListSubjects.add(value);
  }

  void removeFromListSubjects(SubjectStruct value) {
    ListSubjects.remove(value);
  }

  void removeAtIndexFromListSubjects(int index) {
    ListSubjects.removeAt(index);
  }

  void updateListSubjectsAtIndex(
    int index,
    SubjectStruct Function(SubjectStruct) updateFn,
  ) {
    ListSubjects[index] = updateFn(_ListSubjects[index]);
  }

  void insertAtIndexInListSubjects(int index, SubjectStruct value) {
    ListSubjects.insert(index, value);
  }

  bool _onBoardingShow = true;
  bool get onBoardingShow => _onBoardingShow;
  set onBoardingShow(bool value) {
    _onBoardingShow = value;
  }
}
