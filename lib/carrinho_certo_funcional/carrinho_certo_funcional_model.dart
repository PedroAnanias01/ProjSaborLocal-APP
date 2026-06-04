import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_certo_funcional_widget.dart' show CarrinhoCertoFuncionalWidget;
import 'package:flutter/material.dart';

class CarrinhoCertoFuncionalModel
    extends FlutterFlowModel<CarrinhoCertoFuncionalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // Stores action output result for [Backend Call - API (adicionar ao Carrinho)] action in Button widget.
  ApiCallResponse? resultCriarPedido;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
    navegacaoModel.dispose();
  }
}
