import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'suco_de_caju_widget.dart' show SucoDeCajuWidget;
import 'package:flutter/material.dart';

class SucoDeCajuModel extends FlutterFlowModel<SucoDeCajuWidget> {
  ///  State fields for stateful widgets in this page.

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
