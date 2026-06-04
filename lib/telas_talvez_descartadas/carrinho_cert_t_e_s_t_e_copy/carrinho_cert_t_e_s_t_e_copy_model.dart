import '/backend/api_requests/api_calls.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_cert_t_e_s_t_e_copy_widget.dart'
    show CarrinhoCertTESTECopyWidget;
import 'package:flutter/material.dart';

class CarrinhoCertTESTECopyModel
    extends FlutterFlowModel<CarrinhoCertTESTECopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (obterCarrinhoTESTE)] action in CarrinhoCertTESTECopy widget.
  ApiCallResponse? apiResultOBTCarrinTst;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    navegacaoModel.dispose();
  }
}
