import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cardapio_geral_c_e_r_t_a_widget.dart' show CardapioGeralCERTAWidget;
import 'package:flutter/material.dart';

class CardapioGeralCERTAModel
    extends FlutterFlowModel<CardapioGeralCERTAWidget> {
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
  // Model for barralateral component.
  late BarralateralModel barralateralModel;

  @override
  void initState(BuildContext context) {
    navegacaoModel = createModel(context, () => NavegacaoModel());
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    textFieldPESQUISARFocusNode?.dispose();
    textFieldPESQUISARTextController?.dispose();

    navegacaoModel.dispose();
    barralateralModel.dispose();
  }
}
