import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cadastro_endereco_dentrodo_a_p_p_widget.dart'
    show CadastroEnderecoDentrodoAPPWidget;
import 'package:flutter/material.dart';

class CadastroEnderecoDentrodoAPPModel
    extends FlutterFlowModel<CadastroEnderecoDentrodoAPPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
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
