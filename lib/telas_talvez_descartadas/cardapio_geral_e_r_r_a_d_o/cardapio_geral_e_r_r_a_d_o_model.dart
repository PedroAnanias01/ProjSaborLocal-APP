import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cardapio_geral_e_r_r_a_d_o_widget.dart' show CardapioGeralERRADOWidget;
import 'package:flutter/material.dart';

class CardapioGeralERRADOModel
    extends FlutterFlowModel<CardapioGeralERRADOWidget> {
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
