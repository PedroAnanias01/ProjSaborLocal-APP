import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ValidarOtpCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? cdgDigit = '',
  }) async {
    final ffApiRequestBody = '''
{"email": "${escapeStringForJson(email)}", 
"cdg_digit":"${escapeStringForJson(cdgDigit)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validar otp',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:YJ6qxT9t/validar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultaCEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? siglaUF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

class PesquisarCardapioCall {
  static Future<ApiCallResponse> call({
    String? buscarTerm = '',
    String? categoria = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pesquisarCardapio',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/buscar_cardapio',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Pesquisar': buscarTerm,
        'categoria': categoria,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  static String? desc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].descricao''',
      ));
  static double? preco(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].preco''',
      ));
  static String? categ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].categoria''',
      ));
  static String? imagemURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imagens_produtos.url''',
      ));
  static int? produtoID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class CadastrarClienteCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? celular = '',
    String? cpf = '',
    String? asaasId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "senha": "${escapeStringForJson(senha)}",
  "celular": "${escapeStringForJson(celular)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "asaas_id": "${escapeStringForJson(asaasId)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrarCliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/cadastraCliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static int? clienteId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cliente.id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class CriarClienteAsaasCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? cpfCnpj = '',
    String? email = '',
    String? phone = '',
    String? addressNumber = '',
    String? postalCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "cpfCnpj": "${escapeStringForJson(cpfCnpj)}",
  "email": "${escapeStringForJson(email)}",
  "phone": "${escapeStringForJson(phone)}",
  "addressNumber": "${escapeStringForJson(addressNumber)}",
  "postalCode": "${escapeStringForJson(postalCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cliente Asaas',
      apiUrl: 'https://api-sandbox.asaas.com/v3/customers',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token':
            '\$aact_hmlg_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJmYWU1ZDBhLTcyNjEtNDE0OC04NGIwLTE5ZGQzMDgzODc3Yzo6JGFhY2hfZDZjNTIxMDUtNTczNC00MWMwLTljYWQtMGI5MWIyNWU1Nzdj',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarOtpCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviar otp',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:YJ6qxT9t/enviar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SalvaEnderecoCall {
  static Future<ApiCallResponse> call({
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? cep = '',
    String? cidade = '',
    String? estado = '',
    int? clienteId,
    bool? padrao = false,
    int? tipoenderecoId,
    String? bairro = '',
  }) async {
    final ffApiRequestBody = '''
{
  "logradouro": "${escapeStringForJson(logradouro)}",
  "numero": "${escapeStringForJson(numero)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cep": "${escapeStringForJson(cep)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "cidade": "${escapeStringForJson(cidade)}",
  "estado": "${escapeStringForJson(estado)}",
  "cliente_id": "${clienteId}",
  "padrao": "${padrao}",
  "tipoendereco_id": "${tipoenderecoId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'salvaEndereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/salvaEndereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarCdgEsqSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviar cdg Esq Senha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/enviar_cdgSenha',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MudarSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? cdgSenha = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "cdg_senha": "${escapeStringForJson(cdgSenha)}",
  "password": "${escapeStringForJson(password)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'mudar Senha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/mudar_senha',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LOGIN',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class BuscarUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarUser',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AdicionarAoCarrinhoCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
    int? produtoId,
    int? qtd,
    double? valorUnit,
    double? taxaEntrega,
    double? taxaServico,
  }) async {
    final ffApiRequestBody = '''
{
  "cliente_id": ${clienteId},
  "produto_id": ${produtoId},
  "qtd": ${qtd},
  "valor_unit": ${valorUnit},
  "taxa_entrega": ${taxaEntrega},
  "taxa_servico": ${taxaServico}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adicionar ao Carrinho',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/adicionar_ao_carrinho',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterCarrinhoCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'obterCarrinho',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/obter_carrinho',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultaEnderecoCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultaEndereco',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/consultaEnderecoDoCliente',
      callType: ApiCallType.GET,
      headers: {
        'Name': 'Authorization   Value: Bearer ${authtoken}',
      },
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listaEnderecos(dynamic response) => getJsonField(
        response,
        r'''$.endereco1''',
        true,
      ) as List?;
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco1[:].logradouro''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco1[:].numero''',
      ));
  static String? objetoCep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco1[:]._cep.cep''',
      ));
  static bool? padrao(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.endereco1[:].padrao''',
      ));
  static List<String>? bairro(dynamic response) => (getJsonField(
        response,
        r'''$.endereco1[:].bairro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? uf(dynamic response) => (getJsonField(
        response,
        r'''$.endereco1[:]._cep.uf''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cidade(dynamic response) => (getJsonField(
        response,
        r'''$.endereco1[:]._cep.cidade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.endereco1[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ConsultaEnderecoPadraoCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultaEnderecoPadrao',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/consultaEnderecoPadrao',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:]._cep.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:].logradouro''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:].numero''',
      ));
  static List? listaEndereco(dynamic response) => getJsonField(
        response,
        r'''$.endereco''',
        true,
      ) as List?;
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:].bairro''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:]._cep.uf''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco[:]._cep.cidade''',
      ));
}

class BuscaClienteCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/buscaCliente',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? clienteID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  static String? celular(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.celular''',
      ));
  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cpf''',
      ));
  static int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
}

class ObterCarrinhoTESTECall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'obterCarrinhoTESTE',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/obterCarrinho_TESTE',
      callType: ApiCallType.GET,
      headers: {
        'Name': 'Authorization   Value: Bearer ${authtoken}',
      },
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? pedido(dynamic response) => getJsonField(
        response,
        r'''$[:]._pedido''',
        true,
      ) as List?;
  static List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:]._produto.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? produtoPreco(dynamic response) => (getJsonField(
        response,
        r'''$[:]._produto.preco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imagensProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:]._produto.imagens_produtos.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantidade(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtd''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? produto(dynamic response) => getJsonField(
        response,
        r'''$[:]._produto''',
        true,
      ) as List?;
}

class MarcarEnderecoPadraoCall {
  static Future<ApiCallResponse> call({
    int? enderecoId,
  }) async {
    final ffApiRequestBody = '''
{
  "endereco_id": ${enderecoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'marcarEnderecoPadrao',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/marcarEnderecoPadrao',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdicionarAoCarrinhoTESTECall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
    dynamic listaItensJson,
  }) async {
    final listaItens = _serializeJson(listaItensJson);
    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}",
  "lista_itens": ${listaItens}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adicionarAoCarrinhoTESTE',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/adicionar_ao_carrinhoTESTE',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CobrancaComCreditoASAASCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    String? billingType = 'CREDIT_CARD',
    double? value,
    String? dueDate = '',
    String? creditCardToken = '',
    String? remoteIp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "billingType": "${escapeStringForJson(billingType)}",
  "customer": "${escapeStringForJson(customer)}",
  "value": ${value},
  "dueDate": "${escapeStringForJson(dueDate)}",
  "creditCardToken": "${escapeStringForJson(creditCardToken)}",
  "remoteIp": "${escapeStringForJson(remoteIp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cobranca com Credito ASAAS',
      apiUrl: 'https://api-sandbox.asaas.com/v3/payments/',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token':
            '\$aact_hmlg_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJmYWU1ZDBhLTcyNjEtNDE0OC04NGIwLTE5ZGQzMDgzODc3Yzo6JGFhY2hfZDZjNTIxMDUtNTczNC00MWMwLTljYWQtMGI5MWIyNWU1Nzdj',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TokenizacaooCreditoASAASCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    String? holderName = '',
    String? number = '',
    String? expiryMonth = '',
    String? expiryYear = '',
    String? ccv = '',
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? postalCode = '',
    String? addressNumber = '',
    String? phone = '',
    String? remoteIp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "creditCard": {
    "holderName": "${escapeStringForJson(holderName)}",
    "number": "${escapeStringForJson(number)}",
    "expiryMonth": "${escapeStringForJson(expiryMonth)}",
    "expiryYear": "${escapeStringForJson(expiryYear)}",
    "ccv": "${escapeStringForJson(ccv)}"
  },
  "creditCardHolderInfo": {
    "email": "${escapeStringForJson(email)}",
    "cpfCnpj": "${escapeStringForJson(cpfCnpj)}",
    "postalCode": "${escapeStringForJson(postalCode)}",
    "addressNumber": "${escapeStringForJson(addressNumber)}",
    "name": "${escapeStringForJson(name)}",
    "phone": "${escapeStringForJson(phone)}"
  },
  "customer": "${escapeStringForJson(customer)}",
  "remoteIp": "${escapeStringForJson(remoteIp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Tokenizacaoo credito ASAAS',
      apiUrl: 'https://api-sandbox.asaas.com/v3/creditCard/tokenizeCreditCard',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token':
            '\$aact_hmlg_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJmYWU1ZDBhLTcyNjEtNDE0OC04NGIwLTE5ZGQzMDgzODc3Yzo6JGFhY2hfZDZjNTIxMDUtNTczNC00MWMwLTljYWQtMGI5MWIyNWU1Nzdj',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserIPCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'UserIP',
      apiUrl: 'https://api.ipify.org?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StatusPagamentoCreditoCall {
  static Future<ApiCallResponse> call({
    String? statusPagamento = '',
    int? clienteId,
    String? pedidoId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status_pagamento": "${escapeStringForJson(statusPagamento)}",
  "cliente_id": ${clienteId},
  "pedido_id": "${escapeStringForJson(pedidoId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'statusPagamento Credito',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/status_pagamento_credito',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PedidoDoClienteCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pedido do Cliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pedidoID_cliente',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${clienteId}',
      },
      params: {
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NOVOstatusPagamentoCreditoCall {
  static Future<ApiCallResponse> call({
    String? statusPagamento = '',
    int? pedidoId,
  }) async {
    final ffApiRequestBody = '''
{
  "status_pagamento": "${escapeStringForJson(statusPagamento)}",
  "pedido_id": ${pedidoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NOVOstatus pagamento credito',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/status_pagamento_creditoTESTE',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MudarStatusCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
  }) async {
    final ffApiRequestBody = '''
{
  "cliente_id": ${clienteId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'mudarStatus',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/mudar_status_email',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TODOSPedidosClienteCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TODOS pedidos cliente',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pedidoID_clienteTODOS',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${clienteId}',
      },
      params: {
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelarPedidoCall {
  static Future<ApiCallResponse> call({
    int? pedidoId,
  }) async {
    final ffApiRequestBody = '''
{
  "pedido_id": ${pedidoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cancelarPedido',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/cancelarPedido',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemEspcfDoPedClienteCall {
  static Future<ApiCallResponse> call({
    int? pedidoId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'itemEspcf do PedCliente',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/itensPedidoEspcf_Cliente',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pedido_id': pedidoId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaPratosdoDiaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaPratosdoDia',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pratos_do_dia',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].produto_id''',
      ));
  static double? preco(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].preco_promocional''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._produto.nome''',
      ));
  static String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._produto.descricao''',
      ));
  static String? imagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._produto.imagens_produtos.path''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._produto.imagens_produtos.url''',
      ));
}

class BuscaStatusPedidoCall {
  static Future<ApiCallResponse> call({
    int? pedidoId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaStatusPedido',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/buscaStatusPedido',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pedido_id': pedidoId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCuponsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCupons',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/coupons',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
