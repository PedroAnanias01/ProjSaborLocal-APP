import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEMAIL_LOGIN widget.
  FocusNode? textFieldEMAILLOGINFocusNode;
  TextEditingController? textFieldEMAILLOGINTextController;
  String? Function(BuildContext, String?)?
      textFieldEMAILLOGINTextControllerValidator;
  // State field(s) for TextFieldsenha_login widget.
  FocusNode? textFieldsenhaLoginFocusNode;
  TextEditingController? textFieldsenhaLoginTextController;
  late bool textFieldsenhaLoginVisibility;
  String? Function(BuildContext, String?)?
      textFieldsenhaLoginTextControllerValidator;
  // Stores action output result for [Backend Call - API (LOGIN)] action in Button widget.
  ApiCallResponse? apiResultLogin;
  // Stores action output result for [Backend Call - API (BuscarUser)] action in Button widget.
  ApiCallResponse? resultadoPerfil;
  // Stores action output result for [Backend Call - API (buscaCliente)] action in Button widget.
  ApiCallResponse? resultBuscaCliente;

  @override
  void initState(BuildContext context) {
    textFieldsenhaLoginVisibility = false;
  }

  @override
  void dispose() {
    textFieldEMAILLOGINFocusNode?.dispose();
    textFieldEMAILLOGINTextController?.dispose();

    textFieldsenhaLoginFocusNode?.dispose();
    textFieldsenhaLoginTextController?.dispose();
  }
}
