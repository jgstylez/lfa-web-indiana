import '../database.dart';

class DeliveryCountPerDayTable extends SupabaseTable<DeliveryCountPerDayRow> {
  @override
  String get tableName => 'delivery_count_per_day';

  @override
  DeliveryCountPerDayRow createRow(Map<String, dynamic> data) =>
      DeliveryCountPerDayRow(data);
}

class DeliveryCountPerDayRow extends SupabaseDataRow {
  DeliveryCountPerDayRow(super.data);

  @override
  SupabaseTable get table => DeliveryCountPerDayTable();

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  int? get deliveryCount => getField<int>('delivery_count');
  set deliveryCount(int? value) => setField<int>('delivery_count', value);
}
