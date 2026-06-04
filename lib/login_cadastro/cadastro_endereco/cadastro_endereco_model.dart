import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_endereco_widget.dart' show CadastroEnderecoWidget;
import 'package:flutter/material.dart';

class CadastroEnderecoModel extends FlutterFlowModel<CadastroEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldCEP_end widget.
  FocusNode? textFieldCEPEndFocusNode;
  TextEditingController? textFieldCEPEndTextController;
  String? Function(BuildContext, String?)?
      textFieldCEPEndTextControllerValidator;
  // Stores action output result for [Backend Call - API (consultaCEP)] action in TextFieldCEP_end widget.
  ApiCallResponse? apiResultconsCEP;
  // State field(s) for TextFieldRUA_end widget.
  FocusNode? textFieldRUAEndFocusNode;
  TextEditingController? textFieldRUAEndTextController;
  String? Function(BuildContext, String?)?
      textFieldRUAEndTextControllerValidator;
  // State field(s) for TextFieldBAIRRO_end widget.
  FocusNode? textFieldBAIRROEndFocusNode;
  TextEditingController? textFieldBAIRROEndTextController;
  String? Function(BuildContext, String?)?
      textFieldBAIRROEndTextControllerValidator;
  // State field(s) for TextFieldNUM_end widget.
  FocusNode? textFieldNUMEndFocusNode;
  TextEditingController? textFieldNUMEndTextController;
  String? Function(BuildContext, String?)?
      textFieldNUMEndTextControllerValidator;
  // State field(s) for TextFieldCIDADE_end widget.
  FocusNode? textFieldCIDADEEndFocusNode;
  TextEditingController? textFieldCIDADEEndTextController;
  String? Function(BuildContext, String?)?
      textFieldCIDADEEndTextControllerValidator;
  // State field(s) for TextFieldESTADO_end widget.
  FocusNode? textFieldESTADOEndFocusNode;
  TextEditingController? textFieldESTADOEndTextController;
  String? Function(BuildContext, String?)?
      textFieldESTADOEndTextControllerValidator;
  // State field(s) for TextFieldCOMPLEMENTO_end widget.
  FocusNode? textFieldCOMPLEMENTOEndFocusNode;
  TextEditingController? textFieldCOMPLEMENTOEndTextController;
  String? Function(BuildContext, String?)?
      textFieldCOMPLEMENTOEndTextControllerValidator;
  // Stores action output result for [Backend Call - API (salvaEndereco)] action in Button widget.
  ApiCallResponse? apiResultCadastEND;
  // Stores action output result for [Backend Call - API (BuscarUser)] action in Button widget.
  ApiCallResponse? respostaUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCEPEndFocusNode?.dispose();
    textFieldCEPEndTextController?.dispose();

    textFieldRUAEndFocusNode?.dispose();
    textFieldRUAEndTextController?.dispose();

    textFieldBAIRROEndFocusNode?.dispose();
    textFieldBAIRROEndTextController?.dispose();

    textFieldNUMEndFocusNode?.dispose();
    textFieldNUMEndTextController?.dispose();

    textFieldCIDADEEndFocusNode?.dispose();
    textFieldCIDADEEndTextController?.dispose();

    textFieldESTADOEndFocusNode?.dispose();
    textFieldESTADOEndTextController?.dispose();

    textFieldCOMPLEMENTOEndFocusNode?.dispose();
    textFieldCOMPLEMENTOEndTextController?.dispose();
  }
}
