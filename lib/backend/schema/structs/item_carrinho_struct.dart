// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemCarrinhoStruct extends BaseStruct {
  ItemCarrinhoStruct({
    int? produtoId,
    String? nome,
    double? preco,
    int? quantidade,
    String? imagem,
  })  : _produtoId = produtoId,
        _nome = nome,
        _preco = preco,
        _quantidade = quantidade,
        _imagem = imagem;

  // "produto_id" field.
  int? _produtoId;
  int get produtoId => _produtoId ?? 0;
  set produtoId(int? val) => _produtoId = val;

  void incrementProdutoId(int amount) => produtoId = produtoId + amount;

  bool hasProdutoId() => _produtoId != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;

  bool hasImagem() => _imagem != null;

  static ItemCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      ItemCarrinhoStruct(
        produtoId: castToType<int>(data['produto_id']),
        nome: data['nome'] as String?,
        preco: castToType<double>(data['preco']),
        quantidade: castToType<int>(data['quantidade']),
        imagem: data['imagem'] as String?,
      );

  static ItemCarrinhoStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemCarrinhoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'produto_id': _produtoId,
        'nome': _nome,
        'preco': _preco,
        'quantidade': _quantidade,
        'imagem': _imagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'produto_id': serializeParam(
          _produtoId,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItemCarrinhoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemCarrinhoStruct(
        produtoId: deserializeParam(
          data['produto_id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItemCarrinhoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemCarrinhoStruct &&
        produtoId == other.produtoId &&
        nome == other.nome &&
        preco == other.preco &&
        quantidade == other.quantidade &&
        imagem == other.imagem;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([produtoId, nome, preco, quantidade, imagem]);
}

ItemCarrinhoStruct createItemCarrinhoStruct({
  int? produtoId,
  String? nome,
  double? preco,
  int? quantidade,
  String? imagem,
}) =>
    ItemCarrinhoStruct(
      produtoId: produtoId,
      nome: nome,
      preco: preco,
      quantidade: quantidade,
      imagem: imagem,
    );
