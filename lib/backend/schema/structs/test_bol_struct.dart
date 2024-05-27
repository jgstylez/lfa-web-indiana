// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestBolStruct extends BaseStruct {
  TestBolStruct({
    List<String>? product,
    List<int>? quantity,
    List<String>? qType,
    List<double>? weight,
    List<String>? wType,
    List<String>? message,
  })  : _product = product,
        _quantity = quantity,
        _qType = qType,
        _weight = weight,
        _wType = wType,
        _message = message;

  // "product" field.
  List<String>? _product;
  List<String> get product => _product ?? const [];
  set product(List<String>? val) => _product = val;
  void updateProduct(Function(List<String>) updateFn) =>
      updateFn(_product ??= []);
  bool hasProduct() => _product != null;

  // "quantity" field.
  List<int>? _quantity;
  List<int> get quantity => _quantity ?? const [];
  set quantity(List<int>? val) => _quantity = val;
  void updateQuantity(Function(List<int>) updateFn) =>
      updateFn(_quantity ??= []);
  bool hasQuantity() => _quantity != null;

  // "qType" field.
  List<String>? _qType;
  List<String> get qType => _qType ?? const [];
  set qType(List<String>? val) => _qType = val;
  void updateQType(Function(List<String>) updateFn) => updateFn(_qType ??= []);
  bool hasQType() => _qType != null;

  // "weight" field.
  List<double>? _weight;
  List<double> get weight => _weight ?? const [];
  set weight(List<double>? val) => _weight = val;
  void updateWeight(Function(List<double>) updateFn) =>
      updateFn(_weight ??= []);
  bool hasWeight() => _weight != null;

  // "wType" field.
  List<String>? _wType;
  List<String> get wType => _wType ?? const [];
  set wType(List<String>? val) => _wType = val;
  void updateWType(Function(List<String>) updateFn) => updateFn(_wType ??= []);
  bool hasWType() => _wType != null;

  // "message" field.
  List<String>? _message;
  List<String> get message => _message ?? const [];
  set message(List<String>? val) => _message = val;
  void updateMessage(Function(List<String>) updateFn) =>
      updateFn(_message ??= []);
  bool hasMessage() => _message != null;

  static TestBolStruct fromMap(Map<String, dynamic> data) => TestBolStruct(
        product: getDataList(data['product']),
        quantity: getDataList(data['quantity']),
        qType: getDataList(data['qType']),
        weight: getDataList(data['weight']),
        wType: getDataList(data['wType']),
        message: getDataList(data['message']),
      );

  static TestBolStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestBolStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product': _product,
        'quantity': _quantity,
        'qType': _qType,
        'weight': _weight,
        'wType': _wType,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product': serializeParam(
          _product,
          ParamType.String,
          true,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
          true,
        ),
        'qType': serializeParam(
          _qType,
          ParamType.String,
          true,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
          true,
        ),
        'wType': serializeParam(
          _wType,
          ParamType.String,
          true,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static TestBolStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestBolStruct(
        product: deserializeParam<String>(
          data['product'],
          ParamType.String,
          true,
        ),
        quantity: deserializeParam<int>(
          data['quantity'],
          ParamType.int,
          true,
        ),
        qType: deserializeParam<String>(
          data['qType'],
          ParamType.String,
          true,
        ),
        weight: deserializeParam<double>(
          data['weight'],
          ParamType.double,
          true,
        ),
        wType: deserializeParam<String>(
          data['wType'],
          ParamType.String,
          true,
        ),
        message: deserializeParam<String>(
          data['message'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'TestBolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TestBolStruct &&
        listEquality.equals(product, other.product) &&
        listEquality.equals(quantity, other.quantity) &&
        listEquality.equals(qType, other.qType) &&
        listEquality.equals(weight, other.weight) &&
        listEquality.equals(wType, other.wType) &&
        listEquality.equals(message, other.message);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([product, quantity, qType, weight, wType, message]);
}

TestBolStruct createTestBolStruct() => TestBolStruct();
