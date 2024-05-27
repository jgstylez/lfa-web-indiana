import '../database.dart';

class RegionWithMostDeliveriesTable
    extends SupabaseTable<RegionWithMostDeliveriesRow> {
  @override
  String get tableName => 'region_with_most_deliveries';

  @override
  RegionWithMostDeliveriesRow createRow(Map<String, dynamic> data) =>
      RegionWithMostDeliveriesRow(data);
}

class RegionWithMostDeliveriesRow extends SupabaseDataRow {
  RegionWithMostDeliveriesRow(super.data);

  @override
  SupabaseTable get table => RegionWithMostDeliveriesTable();

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  int? get totalDeliveries => getField<int>('total_deliveries');
  set totalDeliveries(int? value) => setField<int>('total_deliveries', value);
}
