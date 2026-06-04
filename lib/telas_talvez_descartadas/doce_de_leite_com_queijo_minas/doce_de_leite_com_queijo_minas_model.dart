import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'doce_de_leite_com_queijo_minas_widget.dart'
    show DoceDeLeiteComQueijoMinasWidget;
import 'package:flutter/material.dart';

class DoceDeLeiteComQueijoMinasModel
    extends FlutterFlowModel<DoceDeLeiteComQueijoMinasWidget> {
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
