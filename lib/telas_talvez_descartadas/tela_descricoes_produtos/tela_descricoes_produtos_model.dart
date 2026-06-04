import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_descricoes_produtos_widget.dart' show TelaDescricoesProdutosWidget;
import 'package:flutter/material.dart';

class TelaDescricoesProdutosModel
    extends FlutterFlowModel<TelaDescricoesProdutosWidget> {
  ///  Local state fields for this page.

  int? quantidade = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldOBS_PROD widget.
  FocusNode? textFieldOBSPRODFocusNode;
  TextEditingController? textFieldOBSPRODTextController;
  String? Function(BuildContext, String?)?
      textFieldOBSPRODTextControllerValidator;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    textFieldOBSPRODFocusNode?.dispose();
    textFieldOBSPRODTextController?.dispose();

    navegacaoModel.dispose();
  }
}
