// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BolProductStruct extends BaseStruct {
  BolProductStruct({
    String? productTitle,
    int? quantity,
    String? qtyType,
    double? weight,
    String? weightType,
    String? message,
  })  : _productTitle = productTitle,
        _quantity = quantity,
        _qtyType = qtyType,
        _weight = weight,
        _weightType = weightType,
        _message = message;

  // "product_title" field.
  String? _productTitle;
  String get productTitle => _productTitle ?? '';
  set productTitle(String? val) => _productTitle = val;
  bool hasProductTitle() => _productTitle != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "qty_type" field.
  String? _qtyType;
  String get qtyType => _qtyType ?? '';
  set qtyType(String? val) => _qtyType = val;
  bool hasQtyType() => _qtyType != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;
  void incrementWeight(double amount) => _weight = weight + amount;
  bool hasWeight() => _weight != null;

  // "weight_type" field.
  String? _weightType;
  String get weightType => _weightType ?? '';
  set weightType(String? val) => _weightType = val;
  bool hasWeightType() => _weightType != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  static BolProductStruct fromMap(Map<String, dynamic> data) =>
      BolProductStruct(
        productTitle: data['product_title'] as String?,
        quantity: castToType<int>(data['quantity']),
        qtyType: data['qty_type'] as String?,
        weight: castToType<double>(data['weight']),
        weightType: data['weight_type'] as String?,
        message: data['message'] as String?,
      );

  static BolProductStruct? maybeFromMap(dynamic data) => data is Map
      ? BolProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_title': _productTitle,
        'quantity': _quantity,
        'qty_type': _qtyType,
        'weight': _weight,
        'weight_type': _weightType,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_title': serializeParam(
          _productTitle,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'qty_type': serializeParam(
          _qtyType,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
        'weight_type': serializeParam(
          _weightType,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static BolProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      BolProductStruct(
        productTitle: deserializeParam(
          data['product_title'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        qtyType: deserializeParam(
          data['qty_type'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
        weightType: deserializeParam(
          data['weight_type'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BolProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BolProductStruct &&
        productTitle == other.productTitle &&
        quantity == other.quantity &&
        qtyType == other.qtyType &&
        weight == other.weight &&
        weightType == other.weightType &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productTitle, quantity, qtyType, weight, weightType, message]);
}

BolProductStruct createBolProductStruct({
  String? productTitle,
  int? quantity,
  String? qtyType,
  double? weight,
  String? weightType,
  String? message,
}) =>
    BolProductStruct(
      productTitle: productTitle,
      quantity: quantity,
      qtyType: qtyType,
      weight: weight,
      weightType: weightType,
      message: message,
    );
