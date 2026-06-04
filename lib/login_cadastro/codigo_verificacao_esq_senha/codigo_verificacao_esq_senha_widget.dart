import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'codigo_verificacao_esq_senha_model.dart';
export 'codigo_verificacao_esq_senha_model.dart';

/// Verification Code Input Form
class CodigoVerificacaoEsqSenhaWidget extends StatefulWidget {
  const CodigoVerificacaoEsqSenhaWidget({
    super.key,
    required this.email,
  });

  final String? email;

  static String routeName = 'Codigo_verificacao_esqSenha';
  static String routePath = '/codigoVerificacaoEsqSenha';

  @override
  State<CodigoVerificacaoEsqSenhaWidget> createState() =>
      _CodigoVerificacaoEsqSenhaWidgetState();
}

class _CodigoVerificacaoEsqSenhaWidgetState
    extends State<CodigoVerificacaoEsqSenhaWidget> {
  late CodigoVerificacaoEsqSenhaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodigoVerificacaoEsqSenhaModel());

    _model.pinCodeEsqSenhaFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF9F1E4),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1000126056_4.png',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'Esqueceu sua Senha?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          font: GoogleFonts.lato(
                            fontWeight: FontWeight.w800,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .fontStyle,
                          ),
                          color: Color(0xFF4B2E2B),
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .fontStyle,
                        ),
                  ),
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Informe o código de verifcação que foi enviado para o seu ',
                          style: TextStyle(
                            color: Color(0xFF4B2E2B),
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'e-mail informado:',
                          style: TextStyle(
                            color: Color(0xFF4B2E2B),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.lato(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF4B2E2B),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  PinCodeTextField(
                    autoDisposeControllers: false,
                    appContext: context,
                    length: 6,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: GoogleFonts.lato(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                          color: Color(0xFF4B2E2B),
                          letterSpacing: 0.0,
                          fontWeight:
                              FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    enableActiveFill: false,
                    autoFocus: true,
                    focusNode: _model.pinCodeEsqSenhaFocusNode,
                    enablePinAutofill: false,
                    errorTextSpace: 16.0,
                    showCursor: true,
                    cursorColor: Color(0xFF4B2E2B),
                    obscureText: false,
                    hintCharacter: '●',
                    keyboardType: TextInputType.visiblePassword,
                    pinTheme: PinTheme(
                      fieldHeight: 58.0,
                      fieldWidth: 50.0,
                      borderWidth: 2.0,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      shape: PinCodeFieldShape.box,
                      activeColor: Color(0xFF4B2E2B),
                      inactiveColor: Color(0xFF4B2E2B),
                      selectedColor: Color(0xFF4B2E2B),
                    ),
                    controller: _model.pinCodeEsqSenha,
                    onChanged: (_) {},
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator:
                        _model.pinCodeEsqSenhaValidator.asValidator(context),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.apiResultValidarEsqSenha =
                          await ValidarOtpCall.call(
                        email: widget.email,
                        cdgDigit: _model.pinCodeEsqSenha!.text,
                      );

                      if ((_model.apiResultValidarEsqSenha?.succeeded ??
                          true)) {
                        context.pushNamed(
                          NovaSenhaWidget.routeName,
                          queryParameters: {
                            'emailpSenha': serializeParam(
                              widget.email,
                              ParamType.String,
                            ),
                            'cdgSenha': serializeParam(
                              _model.pinCodeEsqSenha!.text,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Código INVALIDO',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0xFFF40811),
                          ),
                        );
                      }

                      safeSetState(() {});
                    },
                    text: 'Verificar',
                    options: FFButtonOptions(
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFC08552),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                font: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 24.0))
                    .addToStart(SizedBox(height: 48.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
