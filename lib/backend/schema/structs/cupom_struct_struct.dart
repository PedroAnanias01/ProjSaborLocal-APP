// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CupomStructStruct extends BaseStruct {
  CupomStructStruct({
    String? code,
    double? discountValue,
    double? minOrderValue,
    double? maxDiscount,
    String? discountType,
  })  : _code = code,
        _discountValue = discountValue,
        _minOrderValue = minOrderValue,
        _maxDiscount = maxDiscount,
        _discountType = discountType;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "discount_value" field.
  double? _discountValue;
  double get discountValue => _discountValue ?? 0.0;
  set discountValue(double? val) => _discountValue = val;

  void incrementDiscountValue(double amount) =>
      discountValue = discountValue + amount;

  bool hasDiscountValue() => _discountValue != null;

  // "min_order_value" field.
  double? _minOrderValue;
  double get minOrderValue => _minOrderValue ?? 0.0;
  set minOrderValue(double? val) => _minOrderValue = val;

  void incrementMinOrderValue(double amount) =>
      minOrderValue = minOrderValue + amount;

  bool hasMinOrderValue() => _minOrderValue != null;

  // "max_discount" field.
  double? _maxDiscount;
  double get maxDiscount => _maxDiscount ?? 0.0;
  set maxDiscount(double? val) => _maxDiscount = val;

  void incrementMaxDiscount(double amount) =>
      maxDiscount = maxDiscount + amount;

  bool hasMaxDiscount() => _maxDiscount != null;

  // "discount_type" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  set discountType(String? val) => _discountType = val;

  bool hasDiscountType() => _discountType != null;

  static CupomStructStruct fromMap(Map<String, dynamic> data) =>
      CupomStructStruct(
        code: data['code'] as String?,
        discountValue: castToType<double>(data['discount_value']),
        minOrderValue: castToType<double>(data['min_order_value']),
        maxDiscount: castToType<double>(data['max_discount']),
        discountType: data['discount_type'] as String?,
      );

  static CupomStructStruct? maybeFromMap(dynamic data) => data is Map
      ? CupomStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'discount_value': _discountValue,
        'min_order_value': _minOrderValue,
        'max_discount': _maxDiscount,
        'discount_type': _discountType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'discount_value': serializeParam(
          _discountValue,
          ParamType.double,
        ),
        'min_order_value': serializeParam(
          _minOrderValue,
          ParamType.double,
        ),
        'max_discount': serializeParam(
          _maxDiscount,
          ParamType.double,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
      }.withoutNulls;

  static CupomStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      CupomStructStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        discountValue: deserializeParam(
          data['discount_value'],
          ParamType.double,
          false,
        ),
        minOrderValue: deserializeParam(
          data['min_order_value'],
          ParamType.double,
          false,
        ),
        maxDiscount: deserializeParam(
          data['max_discount'],
          ParamType.double,
          false,
        ),
        discountType: deserializeParam(
          data['discount_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CupomStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CupomStructStruct &&
        code == other.code &&
        discountValue == other.discountValue &&
        minOrderValue == other.minOrderValue &&
        maxDiscount == other.maxDiscount &&
        discountType == other.discountType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([code, discountValue, minOrderValue, maxDiscount, discountType]);
}

CupomStructStruct createCupomStructStruct({
  String? code,
  double? discountValue,
  double? minOrderValue,
  double? maxDiscount,
  String? discountType,
}) =>
    CupomStructStruct(
      code: code,
      discountValue: discountValue,
      minOrderValue: minOrderValue,
      maxDiscount: maxDiscount,
      discountType: discountType,
    );
