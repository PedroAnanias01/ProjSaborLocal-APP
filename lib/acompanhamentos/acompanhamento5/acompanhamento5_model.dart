import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'acompanhamento5_widget.dart' show Acompanhamento5Widget;
import 'package:flutter/material.dart';

class Acompanhamento5Model extends FlutterFlowModel<Acompanhamento5Widget> {
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
