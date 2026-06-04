import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/Gen-4_Turbo_-_faca_um_gif_a_prtir_dessa_imagem,_nessa_imagem_tem_uma_fumaca_saindo_da_panela,_faca_u.gif',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/Gen-4_Turbo_-_faca_um_gif_a_prtir_dessa_imagem,_nessa_imagem_tem_uma_fumaca_saindo_da_panela,_faca_u.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : LoginWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: CadastroWidget.routeName,
          path: CadastroWidget.routePath,
          builder: (context, params) => CadastroWidget(),
        ),
        FFRoute(
          name: CadastroEnderecoWidget.routeName,
          path: CadastroEnderecoWidget.routePath,
          builder: (context, params) => CadastroEnderecoWidget(
            clienteId: params.getParam(
              'clienteId',
              ParamType.int,
            ),
            authToken: params.getParam(
              'authToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EsqueceuSuaSenhaWidget.routeName,
          path: EsqueceuSuaSenhaWidget.routePath,
          builder: (context, params) => EsqueceuSuaSenhaWidget(),
        ),
        FFRoute(
          name: EmailInexistenteWidget.routeName,
          path: EmailInexistenteWidget.routePath,
          builder: (context, params) => EmailInexistenteWidget(),
        ),
        FFRoute(
          name: CodigoVerificacaoEsqSenhaWidget.routeName,
          path: CodigoVerificacaoEsqSenhaWidget.routePath,
          builder: (context, params) => CodigoVerificacaoEsqSenhaWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CodigoVerifInvalidoWidget.routeName,
          path: CodigoVerifInvalidoWidget.routePath,
          builder: (context, params) => CodigoVerifInvalidoWidget(),
        ),
        FFRoute(
          name: NovaSenhaWidget.routeName,
          path: NovaSenhaWidget.routePath,
          builder: (context, params) => NovaSenhaWidget(
            emailpSenha: params.getParam(
              'emailpSenha',
              ParamType.String,
            ),
            cdgSenha: params.getParam(
              'cdgSenha',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PromocoesWidget.routeName,
          path: PromocoesWidget.routePath,
          builder: (context, params) => PromocoesWidget(),
        ),
        FFRoute(
          name: CardapioGeralERRADOWidget.routeName,
          path: CardapioGeralERRADOWidget.routePath,
          builder: (context, params) => CardapioGeralERRADOWidget(),
        ),
        FFRoute(
          name: TelaPratosWidget.routeName,
          path: TelaPratosWidget.routePath,
          builder: (context, params) => TelaPratosWidget(),
        ),
        FFRoute(
          name: TelaBebidasWidget.routeName,
          path: TelaBebidasWidget.routePath,
          builder: (context, params) => TelaBebidasWidget(),
        ),
        FFRoute(
          name: TelaSobremesasWidget.routeName,
          path: TelaSobremesasWidget.routePath,
          builder: (context, params) => TelaSobremesasWidget(),
        ),
        FFRoute(
          name: TelaDescricoesProdutosWidget.routeName,
          path: TelaDescricoesProdutosWidget.routePath,
          builder: (context, params) => TelaDescricoesProdutosWidget(
            itemSelecionado: params.getParam(
              'itemSelecionado',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: TutuAMineiraWidget.routeName,
          path: TutuAMineiraWidget.routePath,
          builder: (context, params) => TutuAMineiraWidget(),
        ),
        FFRoute(
          name: CarneDePanelaWidget.routeName,
          path: CarneDePanelaWidget.routePath,
          builder: (context, params) => CarneDePanelaWidget(),
        ),
        FFRoute(
          name: VacaAtoladaWidget.routeName,
          path: VacaAtoladaWidget.routePath,
          builder: (context, params) => VacaAtoladaWidget(),
        ),
        FFRoute(
          name: SucoDeLaranjaWidget.routeName,
          path: SucoDeLaranjaWidget.routePath,
          builder: (context, params) => SucoDeLaranjaWidget(),
        ),
        FFRoute(
          name: SucoDeMaracujaWidget.routeName,
          path: SucoDeMaracujaWidget.routePath,
          builder: (context, params) => SucoDeMaracujaWidget(),
        ),
        FFRoute(
          name: SucoDeCajuWidget.routeName,
          path: SucoDeCajuWidget.routePath,
          builder: (context, params) => SucoDeCajuWidget(),
        ),
        FFRoute(
          name: SucoDeCupuacuWidget.routeName,
          path: SucoDeCupuacuWidget.routePath,
          builder: (context, params) => SucoDeCupuacuWidget(),
        ),
        FFRoute(
          name: DoceDeLeiteComQueijoMinasWidget.routeName,
          path: DoceDeLeiteComQueijoMinasWidget.routePath,
          builder: (context, params) => DoceDeLeiteComQueijoMinasWidget(),
        ),
        FFRoute(
          name: DocedeleitecomqueijominasWidget.routeName,
          path: DocedeleitecomqueijominasWidget.routePath,
          builder: (context, params) => DocedeleitecomqueijominasWidget(),
        ),
        FFRoute(
          name: CarrinhoWidget.routeName,
          path: CarrinhoWidget.routePath,
          builder: (context, params) => CarrinhoWidget(
            pratoEscolhido: params.getParam(
              'pratoEscolhido',
              ParamType.JSON,
            ),
            quantidadeEscolhida: params.getParam(
              'quantidadeEscolhida',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: CarrinhoVazioWidget.routeName,
          path: CarrinhoVazioWidget.routePath,
          builder: (context, params) => CarrinhoVazioWidget(),
        ),
        FFRoute(
          name: PagamentoWidget.routeName,
          path: PagamentoWidget.routePath,
          builder: (context, params) => PagamentoWidget(),
        ),
        FFRoute(
          name: EnderecoWidget.routeName,
          path: EnderecoWidget.routePath,
          builder: (context, params) => EnderecoWidget(),
        ),
        FFRoute(
          name: FinalizacaoWidget.routeName,
          path: FinalizacaoWidget.routePath,
          builder: (context, params) => FinalizacaoWidget(
            cartaoSelecionado: params.getParam(
              'cartaoSelecionado',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: AdicionarCartaoWidget.routeName,
          path: AdicionarCartaoWidget.routePath,
          builder: (context, params) => AdicionarCartaoWidget(),
        ),
        FFRoute(
          name: VerificacaoNovaWidget.routeName,
          path: VerificacaoNovaWidget.routePath,
          builder: (context, params) => VerificacaoNovaWidget(),
        ),
        FFRoute(
          name: VerificacaoNovaCopyWidget.routeName,
          path: VerificacaoNovaCopyWidget.routePath,
          builder: (context, params) => VerificacaoNovaCopyWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CardapioGeralCopyWidget.routeName,
          path: CardapioGeralCopyWidget.routePath,
          builder: (context, params) => CardapioGeralCopyWidget(),
        ),
        FFRoute(
          name: TesteCDGWidget.routeName,
          path: TesteCDGWidget.routePath,
          builder: (context, params) => TesteCDGWidget(),
        ),
        FFRoute(
          name: CardapioGeralCERTAWidget.routeName,
          path: CardapioGeralCERTAWidget.routePath,
          builder: (context, params) => CardapioGeralCERTAWidget(),
        ),
        FFRoute(
          name: Acompanhamento1Widget.routeName,
          path: Acompanhamento1Widget.routePath,
          builder: (context, params) => Acompanhamento1Widget(),
        ),
        FFRoute(
          name: Acompanhamento2Widget.routeName,
          path: Acompanhamento2Widget.routePath,
          builder: (context, params) => Acompanhamento2Widget(),
        ),
        FFRoute(
          name: Acompanhamento3Widget.routeName,
          path: Acompanhamento3Widget.routePath,
          builder: (context, params) => Acompanhamento3Widget(),
        ),
        FFRoute(
          name: Acompanhamento4Widget.routeName,
          path: Acompanhamento4Widget.routePath,
          builder: (context, params) => Acompanhamento4Widget(),
        ),
        FFRoute(
          name: Acompanhamento5Widget.routeName,
          path: Acompanhamento5Widget.routePath,
          builder: (context, params) => Acompanhamento5Widget(),
        ),
        FFRoute(
          name: CarrinhoCertoWidget.routeName,
          path: CarrinhoCertoWidget.routePath,
          builder: (context, params) => CarrinhoCertoWidget(
            pratoEscolhido: params.getParam(
              'pratoEscolhido',
              ParamType.JSON,
            ),
            quantidadeEscolhida: params.getParam(
              'quantidadeEscolhida',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: CarrinhoCertoFuncionalWidget.routeName,
          path: CarrinhoCertoFuncionalWidget.routePath,
          builder: (context, params) => CarrinhoCertoFuncionalWidget(),
        ),
        FFRoute(
          name: CarrinhoCertTESTECopyWidget.routeName,
          path: CarrinhoCertTESTECopyWidget.routePath,
          builder: (context, params) => CarrinhoCertTESTECopyWidget(),
        ),
        FFRoute(
          name: CadastroEnderecoDentrodoAPPWidget.routeName,
          path: CadastroEnderecoDentrodoAPPWidget.routePath,
          builder: (context, params) => CadastroEnderecoDentrodoAPPWidget(
            authToken: params.getParam(
              'authToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TelaDescricoesProdutosCWidget.routeName,
          path: TelaDescricoesProdutosCWidget.routePath,
          builder: (context, params) => TelaDescricoesProdutosCWidget(
            itemSelecionado: params.getParam(
              'itemSelecionado',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: AdicionarCartaoCERTOWidget.routeName,
          path: AdicionarCartaoCERTOWidget.routePath,
          builder: (context, params) => AdicionarCartaoCERTOWidget(),
        ),
        FFRoute(
          name: SeusCartoesWidget.routeName,
          path: SeusCartoesWidget.routePath,
          builder: (context, params) => SeusCartoesWidget(),
        ),
        FFRoute(
          name: SeusCartoesCERTOWidget.routeName,
          path: SeusCartoesCERTOWidget.routePath,
          builder: (context, params) => SeusCartoesCERTOWidget(),
        ),
        FFRoute(
          name: HistoricoCERTOWidget.routeName,
          path: HistoricoCERTOWidget.routePath,
          builder: (context, params) => HistoricoCERTOWidget(),
        ),
        FFRoute(
          name: HistoricoPedidoEscolhidoWidget.routeName,
          path: HistoricoPedidoEscolhidoWidget.routePath,
          builder: (context, params) => HistoricoPedidoEscolhidoWidget(
            pedidoSelecionado: params.getParam(
              'pedidoSelecionado',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: TelaDescricoesProdutosPratosDoDiaWidget.routeName,
          path: TelaDescricoesProdutosPratosDoDiaWidget.routePath,
          builder: (context, params) => TelaDescricoesProdutosPratosDoDiaWidget(
            itemSelecionado: params.getParam(
              'itemSelecionado',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: CuponsWidget.routeName,
          path: CuponsWidget.routePath,
          builder: (context, params) => CuponsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
