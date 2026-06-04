import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cupons_widget.dart' show CuponsWidget;
import 'package:flutter/material.dart';

class CuponsModel extends FlutterFlowModel<CuponsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (marcarEnderecoPadrao)] action in Container widget.
  ApiCallResponse? apiResultPadrao;
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
