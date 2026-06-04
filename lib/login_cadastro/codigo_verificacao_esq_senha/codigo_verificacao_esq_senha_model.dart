import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'codigo_verificacao_esq_senha_widget.dart'
    show CodigoVerificacaoEsqSenhaWidget;
import 'package:flutter/material.dart';

class CodigoVerificacaoEsqSenhaModel
    extends FlutterFlowModel<CodigoVerificacaoEsqSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode_EsqSenha widget.
  TextEditingController? pinCodeEsqSenha;
  FocusNode? pinCodeEsqSenhaFocusNode;
  String? Function(BuildContext, String?)? pinCodeEsqSenhaValidator;
  // Stores action output result for [Backend Call - API (validar otp)] action in Button widget.
  ApiCallResponse? apiResultValidarEsqSenha;

  @override
  void initState(BuildContext context) {
    pinCodeEsqSenha = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeEsqSenhaFocusNode?.dispose();
    pinCodeEsqSenha?.dispose();
  }
}
