import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'finalizacao_widget.dart' show FinalizacaoWidget;
import 'package:flutter/material.dart';

class FinalizacaoModel extends FlutterFlowModel<FinalizacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Cobranca com Credito ASAAS)] action in Button widget.
  ApiCallResponse? apiResultCobrancaAsaas;
  InstantTimer? reavaliarSTATUS;
  // Stores action output result for [Backend Call - API (NOVOstatus pagamento credito)] action in Button widget.
  ApiCallResponse? apiResultStatusPAG;
  // Model for barralateral component.
  late BarralateralModel barralateralModel;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    reavaliarSTATUS?.cancel();
    barralateralModel.dispose();
  }
}
