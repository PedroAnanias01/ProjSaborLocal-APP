import '/backend/api_requests/api_calls.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'acompanhamento2_widget.dart' show Acompanhamento2Widget;
import 'package:flutter/material.dart';

class Acompanhamento2Model extends FlutterFlowModel<Acompanhamento2Widget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (buscaStatusPedido)] action in Acompanhamento2 widget.
  ApiCallResponse? apiResultBSCstatusPEDIDO;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    navegacaoModel.dispose();
  }
}
