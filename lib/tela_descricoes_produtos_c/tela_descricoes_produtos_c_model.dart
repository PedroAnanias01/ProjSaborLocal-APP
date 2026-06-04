import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_descricoes_produtos_c_widget.dart'
    show TelaDescricoesProdutosCWidget;
import 'package:flutter/material.dart';

class TelaDescricoesProdutosCModel
    extends FlutterFlowModel<TelaDescricoesProdutosCWidget> {
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
  // Model for barralateral component.
  late BarralateralModel barralateralModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    textFieldOBSPRODFocusNode?.dispose();
    textFieldOBSPRODTextController?.dispose();

    navegacaoModel.dispose();
    barralateralModel.dispose();
  }
}
