import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'esqueceu_sua_senha_widget.dart' show EsqueceuSuaSenhaWidget;
import 'package:flutter/material.dart';

class EsqueceuSuaSenhaModel extends FlutterFlowModel<EsqueceuSuaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_EmailEsqSenha widget.
  FocusNode? textFieldEmailEsqSenhaFocusNode;
  TextEditingController? textFieldEmailEsqSenhaTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailEsqSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (enviar cdg Esq Senha)] action in Button widget.
  ApiCallResponse? apiResultEnviarEsqSenha;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEmailEsqSenhaFocusNode?.dispose();
    textFieldEmailEsqSenhaTextController?.dispose();
  }
}
