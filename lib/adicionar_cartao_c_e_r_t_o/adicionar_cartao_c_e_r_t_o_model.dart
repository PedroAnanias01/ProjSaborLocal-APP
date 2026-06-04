import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/navegacao/navegacao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'adicionar_cartao_c_e_r_t_o_widget.dart' show AdicionarCartaoCERTOWidget;
import 'package:flutter/material.dart';

class AdicionarCartaoCERTOModel
    extends FlutterFlowModel<AdicionarCartaoCERTOWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (pedido do Cliente)] action in Adicionar_CartaoCERTO widget.
  ApiCallResponse? apiResultuPEDcliente;
  // State field(s) for TextFieldNUMcartao widget.
  FocusNode? textFieldNUMcartaoFocusNode;
  TextEditingController? textFieldNUMcartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldNUMcartaoTextControllerValidator;
  // State field(s) for TextFieldNOMEcartao widget.
  FocusNode? textFieldNOMEcartaoFocusNode;
  TextEditingController? textFieldNOMEcartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldNOMEcartaoTextControllerValidator;
  // State field(s) for TextFieldMEScartao widget.
  FocusNode? textFieldMEScartaoFocusNode;
  TextEditingController? textFieldMEScartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldMEScartaoTextControllerValidator;
  // State field(s) for TextFieldANOcartao widget.
  FocusNode? textFieldANOcartaoFocusNode;
  TextEditingController? textFieldANOcartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldANOcartaoTextControllerValidator;
  // State field(s) for TextFieldCVVcartao widget.
  FocusNode? textFieldCVVcartaoFocusNode;
  TextEditingController? textFieldCVVcartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldCVVcartaoTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCliente)] action in Button widget.
  ApiCallResponse? resultBuscaClienteCARTAO;
  // Stores action output result for [Backend Call - API (consultaEnderecoPadrao)] action in Button widget.
  ApiCallResponse? resultConsEndCARTAO;
  // Stores action output result for [Backend Call - API (Tokenizacaoo credito ASAAS)] action in Button widget.
  ApiCallResponse? apiResultrTokenizacaoCREDIT;
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
    textFieldNUMcartaoFocusNode?.dispose();
    textFieldNUMcartaoTextController?.dispose();

    textFieldNOMEcartaoFocusNode?.dispose();
    textFieldNOMEcartaoTextController?.dispose();

    textFieldMEScartaoFocusNode?.dispose();
    textFieldMEScartaoTextController?.dispose();

    textFieldANOcartaoFocusNode?.dispose();
    textFieldANOcartaoTextController?.dispose();

    textFieldCVVcartaoFocusNode?.dispose();
    textFieldCVVcartaoTextController?.dispose();

    navegacaoModel.dispose();
    barralateralModel.dispose();
  }
}
