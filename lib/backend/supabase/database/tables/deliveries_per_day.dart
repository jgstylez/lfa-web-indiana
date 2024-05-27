import '../database.dart';

class DeliveriesPerDayTable extends SupabaseTable<DeliveriesPerDayRow> {
  @override
  String get tableName => 'deliveries_per_day';

  @override
  DeliveriesPerDayRow createRow(Map<String, dynamic> data) =>
      DeliveriesPerDayRow(data);
}

class DeliveriesPerDayRow extends SupabaseDataRow {
  DeliveriesPerDayRow(super.data);

  @override
  SupabaseTable get table => DeliveriesPerDayTable();

  String? get day => getField<String>('day');
  set day(String? value) => setField<String>('day', value);

  int? get deliveryCount => getField<int>('delivery_count');
  set deliveryCount(int? value) => setField<int>('delivery_count', value);
}
