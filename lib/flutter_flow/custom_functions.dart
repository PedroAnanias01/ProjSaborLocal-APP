import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool validaCPF(String cpf) {
// Remover caracteres indesejados

  cpf = cpf.replaceAll(RegExp(r'[^\d]'), '');
  //Remover hífen "-" e ponto "."
  cpf = cpf.replaceAll("-", "").replaceAll(".", "");
  if (cpf.length != 11) {
    return false;
  }

  // Verificar se todos os dígitos são iguais
  for (int i = 0; i < 10; i++) {
    if (new RegExp(r'^[$i]{11}$').hasMatch(cpf)) {
      return false;
    }
  }

  // Calcular o primeiro dígito verificador
  int sum = 0;
  for (int i = 0; i < 9; i++) {
    int weight = 10 - i;
    sum += int.parse(cpf[i]) * weight;
  }
  int firstCheckDigit = 11 - (sum % 11);
  if (firstCheckDigit >= 10) {
    firstCheckDigit = 0;
  }

  // Calcular o segundo dígito verificador
  sum = 0;
  for (int i = 0; i < 10; i++) {
    int weight = 11 - i;
    sum += int.parse(cpf[i]) * weight;
  }
  int secondCheckDigit = 11 - (sum % 11);
  if (secondCheckDigit >= 10) {
    secondCheckDigit = 0;
  }

  // Verificar se os dígitos verificadores calculados são iguais
  // aos dígitos verificadores fornecidos
  return (int.parse(cpf[9]) == firstCheckDigit) &&
      (int.parse(cpf[10]) == secondCheckDigit);
}

double somarcarrinho(List<ItemCarrinhoStruct>? lista) {
  if (lista == null || lista.isEmpty) {
    return 0.0;
  }
  double total = 0.0;
  for (var item in lista) {
    total += item.preco * item.quantidade;
  }
  return total;
}

double calcularTotalGeral(double subtotal) {
  return (subtotal ?? 0.0) + 6.0 + 1.0;
}

String converterStatusPedido(int statusId) {
  // Se o status vier nulo ou vazio, retorna um texto padrão
  if (statusId == null) {
    return 'Desconhecido';
  }

  switch (statusId) {
    case 1:
      return 'Criado';
    case 2:
      return 'Pagamento em PIX iniciado';
    case 3:
      return 'Código PIX enviado ao cliente';
    case 4:
      return 'PIX realizado';
    case 5:
      return 'Realizado o Primeiro Aviso';
    case 6:
      return 'Cancelado por falta de pagamento';
    case 7:
      return 'Transação via Cartão Iniciada';
    case 8:
      return 'Pago';
    case 9:
      return 'Produção e entrega ordenada';
    case 10:
      return 'Apenas entrega ordenada';
    case 11:
      return 'Possível atraso';
    case 12:
      return 'Pacote Despachado';
    case 13:
      return 'Pacote Devolvido';
    case 14:
      return 'Pacote entregue';
    case 15:
      return 'Finalizado';
    case 16:
      return 'Cancelado';
    case 17:
      return 'Transação de estorno solicitada';
    case 18:
      return 'Pendente de estorno';
    case 19:
      return 'Estornado e Finalizado';
    default:
      return 'Status $statusId';
  }
}

double? calcTotalDesconto(
  double valor,
  double perc,
  double min,
  double max,
) {
// 1. Se o valor for menor que o mínimo, retorna o valor original
  if (valor < min) {
    return valor;
  }

  // 2. Calcula o valor do desconto (ex: 15%)
  double valorDesconto = valor * (perc / 100);

  // 3. Se o desconto passar do teto (ex: 20 reais), trava no teto
  if (valorDesconto > max) {
    valorDesconto = max;
  }

  // 4. Retorna o valor final com desconto aplicado
  return valor - valorDesconto;
}
