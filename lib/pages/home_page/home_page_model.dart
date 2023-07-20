import '/auth/firebase_auth/auth_util.dart';
import '/components/boton_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for boton component.
  late BotonModel botonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    botonModel = createModel(context, () => BotonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    botonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
