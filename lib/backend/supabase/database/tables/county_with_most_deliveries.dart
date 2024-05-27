import '../database.dart';

class CountyWithMostDeliveriesTable
    extends SupabaseTable<CountyWithMostDeliveriesRow> {
  @override
  String get tableName => 'county_with_most_deliveries';

  @override
  CountyWithMostDeliveriesRow createRow(Map<String, dynamic> data) =>
      CountyWithMostDeliveriesRow(data);
}

class CountyWithMostDeliveriesRow extends SupabaseDataRow {
  CountyWithMostDeliveriesRow(super.data);

  @override
  SupabaseTable get table => CountyWithMostDeliveriesTable();

  String? get county => getField<String>('county');
  set county(String? value) => setField<String>('county', value);

  int? get deliveryCount => getField<int>('delivery_count');
  set deliveryCount(int? value) => setField<int>('delivery_count', value);
}
