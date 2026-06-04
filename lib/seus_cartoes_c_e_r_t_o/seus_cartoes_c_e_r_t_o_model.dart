import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'seus_cartoes_c_e_r_t_o_widget.dart' show SeusCartoesCERTOWidget;
import 'package:flutter/material.dart';

class SeusCartoesCERTOModel extends FlutterFlowModel<SeusCartoesCERTOWidget> {
  ///  State fields for stateful widgets in this page.

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
