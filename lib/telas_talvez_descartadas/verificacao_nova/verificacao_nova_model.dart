import '/flutter_flow/flutter_flow_util.dart';
import 'verificacao_nova_widget.dart' show VerificacaoNovaWidget;
import 'package:flutter/material.dart';

class VerificacaoNovaModel extends FlutterFlowModel<VerificacaoNovaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEMAIL_verfcc widget.
  FocusNode? textFieldEMAILVerfccFocusNode;
  TextEditingController? textFieldEMAILVerfccTextController;
  String? Function(BuildContext, String?)?
      textFieldEMAILVerfccTextControllerValidator;
  // State field(s) for PinCode_verfcc widget.
  TextEditingController? pinCodeVerfcc;
  FocusNode? pinCodeVerfccFocusNode;
  String? Function(BuildContext, String?)? pinCodeVerfccValidator;

  @override
  void initState(BuildContext context) {
    pinCodeVerfcc = TextEditingController();
  }

  @override
  void dispose() {
    textFieldEMAILVerfccFocusNode?.dispose();
    textFieldEMAILVerfccTextController?.dispose();

    pinCodeVerfccFocusNode?.dispose();
    pinCodeVerfcc?.dispose();
  }
}
