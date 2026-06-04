import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nova_senha_widget.dart' show NovaSenhaWidget;
import 'package:flutter/material.dart';

class NovaSenhaModel extends FlutterFlowModel<NovaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_NovaSenha widget.
  FocusNode? textFieldNovaSenhaFocusNode;
  TextEditingController? textFieldNovaSenhaTextController;
  late bool textFieldNovaSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldNovaSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (mudar Senha)] action in Button widget.
  ApiCallResponse? apiResultNovaSenha;

  @override
  void initState(BuildContext context) {
    textFieldNovaSenhaVisibility = false;
  }

  @override
  void dispose() {
    textFieldNovaSenhaFocusNode?.dispose();
    textFieldNovaSenhaTextController?.dispose();
  }
}
