import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mensagem_sucesso_p_a_g_model.dart';
export 'mensagem_sucesso_p_a_g_model.dart';

class MensagemSucessoPAGWidget extends StatefulWidget {
  const MensagemSucessoPAGWidget({super.key});

  @override
  State<MensagemSucessoPAGWidget> createState() =>
      _MensagemSucessoPAGWidgetState();
}

class _MensagemSucessoPAGWidgetState extends State<MensagemSucessoPAGWidget> {
  late MensagemSucessoPAGModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MensagemSucessoPAGModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 350.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                'Seu pedido foi \nfinalizado!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontSize: 33.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Group_16.png',
              width: 200.0,
              height: 150.63,
              fit: BoxFit.none,
              cacheWidth: 500,
              cacheHeight: 500,
            ),
          ),
          Text(
            '#${FFAppState().pedidoIDcliente.toString()}',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.lato(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).tertiary,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 5.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(Acompanhamento1Widget.routeName);

                  unawaited(
                    () async {}(),
                  );
                },
                text: 'OK',
                options: FFButtonOptions(
                  width: 190.0,
                  height: 55.0,
                  padding: EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 48.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFC08552),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        font: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                        color: Color(0xFFF9F1E4),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
