// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryChartStruct extends BaseStruct {
  DeliveryChartStruct({
    List<int>? deliveryCount,
    List<String>? deliveryDate,
  })  : _deliveryCount = deliveryCount,
        _deliveryDate = deliveryDate;

  // "delivery_count" field.
  List<int>? _deliveryCount;
  List<int> get deliveryCount => _deliveryCount ?? const [];
  set deliveryCount(List<int>? val) => _deliveryCount = val;
  void updateDeliveryCount(Function(List<int>) updateFn) =>
      updateFn(_deliveryCount ??= []);
  bool hasDeliveryCount() => _deliveryCount != null;

  // "delivery_date" field.
  List<String>? _deliveryDate;
  List<String> get deliveryDate => _deliveryDate ?? const [];
  set deliveryDate(List<String>? val) => _deliveryDate = val;
  void updateDeliveryDate(Function(List<String>) updateFn) =>
      updateFn(_deliveryDate ??= []);
  bool hasDeliveryDate() => _deliveryDate != null;

  static DeliveryChartStruct fromMap(Map<String, dynamic> data) =>
      DeliveryChartStruct(
        deliveryCount: getDataList(data['delivery_count']),
        deliveryDate: getDataList(data['delivery_date']),
      );

  static DeliveryChartStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliveryChartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'delivery_count': _deliveryCount,
        'delivery_date': _deliveryDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'delivery_count': serializeParam(
          _deliveryCount,
          ParamType.int,
          true,
        ),
        'delivery_date': serializeParam(
          _deliveryDate,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static DeliveryChartStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliveryChartStruct(
        deliveryCount: deserializeParam<int>(
          data['delivery_count'],
          ParamType.int,
          true,
        ),
        deliveryDate: deserializeParam<String>(
          data['delivery_date'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DeliveryChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DeliveryChartStruct &&
        listEquality.equals(deliveryCount, other.deliveryCount) &&
        listEquality.equals(deliveryDate, other.deliveryDate);
  }

  @override
  int get hashCode => const ListEquality().hash([deliveryCount, deliveryDate]);
}

DeliveryChartStruct createDeliveryChartStruct() => DeliveryChartStruct();
