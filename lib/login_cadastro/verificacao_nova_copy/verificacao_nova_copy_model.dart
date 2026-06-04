import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verificacao_nova_copy_widget.dart' show VerificacaoNovaCopyWidget;
import 'package:flutter/material.dart';

class VerificacaoNovaCopyModel
    extends FlutterFlowModel<VerificacaoNovaCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode_verfcc widget.
  TextEditingController? pinCodeVerfcc;
  FocusNode? pinCodeVerfccFocusNode;
  String? Function(BuildContext, String?)? pinCodeVerfccValidator;
  // Stores action output result for [Backend Call - API (validar otp)] action in Button widget.
  ApiCallResponse? apiResultCDG;
  // Stores action output result for [Backend Call - API (mudarStatus)] action in Button widget.
  ApiCallResponse? apiResultkVERIFICAR;

  @override
  void initState(BuildContext context) {
    pinCodeVerfcc = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeVerfccFocusNode?.dispose();
    pinCodeVerfcc?.dispose();
  }
}
