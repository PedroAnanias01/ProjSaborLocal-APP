import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'historico_pedido_escolhido_widget.dart'
    show HistoricoPedidoEscolhidoWidget;
import 'package:flutter/material.dart';

class HistoricoPedidoEscolhidoModel
    extends FlutterFlowModel<HistoricoPedidoEscolhidoWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (buscaStatusPedido)] action in HistoricoPedidoEscolhido widget.
  ApiCallResponse? apiResultBSCstatusPEDIDO;
  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    barralateralModel.dispose();
    navegacaoModel.dispose();
  }
}
