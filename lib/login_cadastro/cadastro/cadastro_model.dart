import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNMCMP_cadst widget.
  FocusNode? textFieldNMCMPCadstFocusNode;
  TextEditingController? textFieldNMCMPCadstTextController;
  String? Function(BuildContext, String?)?
      textFieldNMCMPCadstTextControllerValidator;
  // State field(s) for TextFieldTEL_cadst widget.
  FocusNode? textFieldTELCadstFocusNode;
  TextEditingController? textFieldTELCadstTextController;
  String? Function(BuildContext, String?)?
      textFieldTELCadstTextControllerValidator;
  // State field(s) for TextFieldCPF_cadst widget.
  FocusNode? textFieldCPFCadstFocusNode;
  TextEditingController? textFieldCPFCadstTextController;
  String? Function(BuildContext, String?)?
      textFieldCPFCadstTextControllerValidator;
  // State field(s) for TextFieldEMAIL_cadst widget.
  FocusNode? textFieldEMAILCadstFocusNode;
  TextEditingController? textFieldEMAILCadstTextController;
  String? Function(BuildContext, String?)?
      textFieldEMAILCadstTextControllerValidator;
  // State field(s) for TextFieldSENHA_cadst widget.
  FocusNode? textFieldSENHACadstFocusNode;
  TextEditingController? textFieldSENHACadstTextController;
  late bool textFieldSENHACadstVisibility;
  String? Function(BuildContext, String?)?
      textFieldSENHACadstTextControllerValidator;
  // Stores action output result for [Backend Call - API (cadastrarCliente)] action in Button widget.
  ApiCallResponse? resultCadastClient;
  // Stores action output result for [Backend Call - API (enviar otp)] action in Button widget.
  ApiCallResponse? apiResultENVIAROTP;

  @override
  void initState(BuildContext context) {
    textFieldSENHACadstVisibility = false;
  }

  @override
  void dispose() {
    textFieldNMCMPCadstFocusNode?.dispose();
    textFieldNMCMPCadstTextController?.dispose();

    textFieldTELCadstFocusNode?.dispose();
    textFieldTELCadstTextController?.dispose();

    textFieldCPFCadstFocusNode?.dispose();
    textFieldCPFCadstTextController?.dispose();

    textFieldEMAILCadstFocusNode?.dispose();
    textFieldEMAILCadstTextController?.dispose();

    textFieldSENHACadstFocusNode?.dispose();
    textFieldSENHACadstTextController?.dispose();
  }
}
