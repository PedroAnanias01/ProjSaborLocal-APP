import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isLoggedIn = prefs.getBool('ff_isLoggedIn') ?? _isLoggedIn;
    });
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
    _safeInit(() {
      _authToken = prefs.getString('ff_authToken') ?? _authToken;
    });
    _safeInit(() {
      _LoggedClienteID = prefs.getInt('ff_LoggedClienteID') ?? _LoggedClienteID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Controla se o usuário continua logado ao reabrir o app.
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    prefs.setBool('ff_isLoggedIn', value);
  }

  /// Guarda o valor total da soma dos itens do carrinho.
  double _cartTotal = 0.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double value) {
    _cartTotal = value;
  }

  /// Guarda o nome do usuário para exibir em saudações (ex: "Olá, João").
  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }

  /// Salvar login do usuario
  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
    prefs.setString('ff_authToken', value);
  }

  int _LoggedClienteID = 96;
  int get LoggedClienteID => _LoggedClienteID;
  set LoggedClienteID(int value) {
    _LoggedClienteID = value;
    prefs.setInt('ff_LoggedClienteID', value);
  }

  List<ItemCarrinhoStruct> _cartItens = [];
  List<ItemCarrinhoStruct> get cartItens => _cartItens;
  set cartItens(List<ItemCarrinhoStruct> value) {
    _cartItens = value;
  }

  void addToCartItens(ItemCarrinhoStruct value) {
    cartItens.add(value);
  }

  void removeFromCartItens(ItemCarrinhoStruct value) {
    cartItens.remove(value);
  }

  void removeAtIndexFromCartItens(int index) {
    cartItens.removeAt(index);
  }

  void updateCartItensAtIndex(
    int index,
    ItemCarrinhoStruct Function(ItemCarrinhoStruct) updateFn,
  ) {
    cartItens[index] = updateFn(_cartItens[index]);
  }

  void insertAtIndexInCartItens(int index, ItemCarrinhoStruct value) {
    cartItens.insert(index, value);
  }

  double _taxaEntrega = 6.0;
  double get taxaEntrega => _taxaEntrega;
  set taxaEntrega(double value) {
    _taxaEntrega = value;
  }

  double _taxaServico = 1.0;
  double get taxaServico => _taxaServico;
  set taxaServico(double value) {
    _taxaServico = value;
  }

  /// IP do usuário
  String _userIP = '';
  String get userIP => _userIP;
  set userIP(String value) {
    _userIP = value;
  }

  String _emailUser = '';
  String get emailUser => _emailUser;
  set emailUser(String value) {
    _emailUser = value;
  }

  String _AsaasID = '';
  String get AsaasID => _AsaasID;
  set AsaasID(String value) {
    _AsaasID = value;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  List<dynamic> _cartaoSalvo = [];
  List<dynamic> get cartaoSalvo => _cartaoSalvo;
  set cartaoSalvo(List<dynamic> value) {
    _cartaoSalvo = value;
  }

  void addToCartaoSalvo(dynamic value) {
    cartaoSalvo.add(value);
  }

  void removeFromCartaoSalvo(dynamic value) {
    cartaoSalvo.remove(value);
  }

  void removeAtIndexFromCartaoSalvo(int index) {
    cartaoSalvo.removeAt(index);
  }

  void updateCartaoSalvoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    cartaoSalvo[index] = updateFn(_cartaoSalvo[index]);
  }

  void insertAtIndexInCartaoSalvo(int index, dynamic value) {
    cartaoSalvo.insert(index, value);
  }

  String _cpfCliente = '';
  String get cpfCliente => _cpfCliente;
  set cpfCliente(String value) {
    _cpfCliente = value;
  }

  String _celularCliente = '';
  String get celularCliente => _celularCliente;
  set celularCliente(String value) {
    _celularCliente = value;
  }

  String _numEndCliente = '';
  String get numEndCliente => _numEndCliente;
  set numEndCliente(String value) {
    _numEndCliente = value;
  }

  String _cepCliente = '';
  String get cepCliente => _cepCliente;
  set cepCliente(String value) {
    _cepCliente = value;
  }

  double _valorTotal = 0.0;
  double get valorTotal => _valorTotal;
  set valorTotal(double value) {
    _valorTotal = value;
  }

  String _statusPagamento = '';
  String get statusPagamento => _statusPagamento;
  set statusPagamento(String value) {
    _statusPagamento = value;
  }

  int _pedidoIDcliente = 0;
  int get pedidoIDcliente => _pedidoIDcliente;
  set pedidoIDcliente(int value) {
    _pedidoIDcliente = value;
  }

  int _auxStsPAG = 8;
  int get auxStsPAG => _auxStsPAG;
  set auxStsPAG(int value) {
    _auxStsPAG = value;
  }

  int _statusPedidoAtual = 0;
  int get statusPedidoAtual => _statusPedidoAtual;
  set statusPedidoAtual(int value) {
    _statusPedidoAtual = value;
  }

  CupomStructStruct _cupomAtivo = CupomStructStruct();
  CupomStructStruct get cupomAtivo => _cupomAtivo;
  set cupomAtivo(CupomStructStruct value) {
    _cupomAtivo = value;
  }

  void updateCupomAtivoStruct(Function(CupomStructStruct) updateFn) {
    updateFn(_cupomAtivo);
  }

  int _statusPedidoHIST = 0;
  int get statusPedidoHIST => _statusPedidoHIST;
  set statusPedidoHIST(int value) {
    _statusPedidoHIST = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
