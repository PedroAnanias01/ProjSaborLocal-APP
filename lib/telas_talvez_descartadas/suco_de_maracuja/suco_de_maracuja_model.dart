import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'suco_de_maracuja_widget.dart' show SucoDeMaracujaWidget;
import 'package:flutter/material.dart';

class SucoDeMaracujaModel extends FlutterFlowModel<SucoDeMaracujaWidget> {
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
