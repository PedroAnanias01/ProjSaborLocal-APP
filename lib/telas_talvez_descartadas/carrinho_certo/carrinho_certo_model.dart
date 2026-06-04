import '/backend/api_requests/api_calls.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_certo_widget.dart' show CarrinhoCertoWidget;
import 'package:flutter/material.dart';

class CarrinhoCertoModel extends FlutterFlowModel<CarrinhoCertoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (obterCarrinho)] action in CarrinhoCerto widget.
  ApiCallResponse? apiResultObtCarrinho;
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
