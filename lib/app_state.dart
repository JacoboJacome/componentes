import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<QuestionStruct> _questions = [
    QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"type\":\"personality\",\"question\":\"Ningun cambio debe haber\"}')),
    QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"type\":\"position\",\"question\":\"este es mi {{role}} y me gusta\"}'))
  ];
  List<QuestionStruct> get questions => _questions;
  set questions(List<QuestionStruct> _value) {
    _questions = _value;
  }

  void addToQuestions(QuestionStruct _value) {
    _questions.add(_value);
  }

  void removeFromQuestions(QuestionStruct _value) {
    _questions.remove(_value);
  }

  void removeAtIndexFromQuestions(int _index) {
    _questions.removeAt(_index);
  }

  void updateQuestionsAtIndex(
    int _index,
    QuestionStruct Function(QuestionStruct) updateFn,
  ) {
    _questions[_index] = updateFn(_questions[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
