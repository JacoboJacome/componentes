// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String? replaceNewRole(
  String question,
  String role,
  String type,
) {
  // i need a function that replace text with input string
  print("Holi");
  String newQuestion;
  if (type == "position") {
    dynamic splitQuestion = question.split("{{role}}");
    print(splitQuestion);
    newQuestion = splitQuestion[0] + " " + role + " " + splitQuestion[1];
    print(newQuestion);
    return newQuestion;
  }
}
