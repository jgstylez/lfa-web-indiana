import '../database.dart';

class RegionDeliveryCountsTable extends SupabaseTable<RegionDeliveryCountsRow> {
  @override
  String get tableName => 'region_delivery_counts';

  @override
  RegionDeliveryCountsRow createRow(Map<String, dynamic> data) =>
      RegionDeliveryCountsRow(data);
}

class RegionDeliveryCountsRow extends SupabaseDataRow {
  RegionDeliveryCountsRow(super.data);

  @override
  SupabaseTable get table => RegionDeliveryCountsTable();

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  int? get deliveryCount => getField<int>('delivery_count');
  set deliveryCount(int? value) => setField<int>('delivery_count', value);
}
