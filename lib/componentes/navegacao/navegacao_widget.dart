import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'navegacao_model.dart';
export 'navegacao_model.dart';

/// Bottom Navigation Icons
class NavegacaoWidget extends StatefulWidget {
  const NavegacaoWidget({
    super.key,
    required this.barralateral,
  });

  final Future Function()? barralateral;

  @override
  State<NavegacaoWidget> createState() => _NavegacaoWidgetState();
}

class _NavegacaoWidgetState extends State<NavegacaoWidget> {
  late NavegacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavegacaoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0xFF4B2E2B),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderRadius: 22.0,
              buttonSize: 44.0,
              icon: Icon(
                Icons.home_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 28.0,
              ),
              onPressed: () async {
                context.pushNamed(CardapioGeralCERTAWidget.routeName);
              },
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(PromocoesWidget.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/lsicon_badge-promotion-filled.png',
                  width: 28.0,
                  height: 28.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(CarrinhoCertoFuncionalWidget.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Vector_(1).png',
                  width: 28.0,
                  height: 28.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderRadius: 22.0,
              buttonSize: 44.0,
              icon: Icon(
                Icons.person_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 28.0,
              ),
              onPressed: () async {
                await widget.barralateral?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
