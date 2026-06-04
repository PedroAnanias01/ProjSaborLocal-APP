import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cardapio_geral_copy_widget.dart' show CardapioGeralCopyWidget;
import 'package:flutter/material.dart';

class CardapioGeralCopyModel extends FlutterFlowModel<CardapioGeralCopyWidget> {
  ///  Local state fields for this page.

  String categoriaSelecionada = ' ';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldPESQUISAR widget.
  FocusNode? textFieldPESQUISARFocusNode;
  TextEditingController? textFieldPESQUISARTextController;
  String? Function(BuildContext, String?)?
      textFieldPESQUISARTextControllerValidator;
  // Model for navegacao component.
  late NavegacaoModel navegacaoModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    textFieldPESQUISARFocusNode?.dispose();
    textFieldPESQUISARTextController?.dispose();

    navegacaoModel.dispose();
  }
}
