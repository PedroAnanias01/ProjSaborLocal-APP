import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vaca_atolada_widget.dart' show VacaAtoladaWidget;
import 'package:flutter/material.dart';

class VacaAtoladaModel extends FlutterFlowModel<VacaAtoladaWidget> {
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
