import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UserIP)] action in Pagamento widget.
  ApiCallResponse? apiResultUSERip;
  // Stores action output result for [Backend Call - API (consultaEnderecoPadrao)] action in Pagamento widget.
  ApiCallResponse? pAGresultConsEndPadrao;
  // Stores action output result for [Backend Call - API (Criar Cliente Asaas)] action in Pagamento widget.
  ApiCallResponse? apiResultCADnoAsaas;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;
  // Model for barralateral component.
  late BarralateralModel barralateralModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    navegacaoModel.dispose();
    barralateralModel.dispose();
  }
}
