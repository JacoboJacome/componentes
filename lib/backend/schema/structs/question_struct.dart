// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    String? type,
    String? question,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _question = question,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        type: data['type'] as String?,
        question: data['question'] as String?,
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? QuestionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'question': _question,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionStruct &&
        type == other.type &&
        question == other.question;
  }

  @override
  int get hashCode => const ListEquality().hash([type, question]);
}

QuestionStruct createQuestionStruct({
  String? type,
  String? question,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      type: type,
      question: question,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? questionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? questionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionStruct == null) {
    return;
  }
  if (questionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && questionStruct.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionStructData =
      getQuestionFirestoreData(questionStruct, forFieldValue);
  final nestedData =
      questionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = questionStruct.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? questionStruct, [
  bool forFieldValue = false,
]) {
  if (questionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionStruct.toMap());

  // Add any Firestore field values
  questionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questionStructs,
) =>
    questionStructs?.map((e) => getQuestionFirestoreData(e, true)).toList() ??
    [];
