import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'historico_c_e_r_t_o_widget.dart' show HistoricoCERTOWidget;
import 'package:flutter/material.dart';

class HistoricoCERTOModel extends FlutterFlowModel<HistoricoCERTOWidget> {
  ///  State fields for stateful widgets in this page.

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
    barralateralModel.dispose();
    navegacaoModel.dispose();
  }
}
