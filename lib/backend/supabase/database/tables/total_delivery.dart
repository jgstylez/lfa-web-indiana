import '../database.dart';

class TotalDeliveryTable extends SupabaseTable<TotalDeliveryRow> {
  @override
  String get tableName => 'total_delivery';

  @override
  TotalDeliveryRow createRow(Map<String, dynamic> data) =>
      TotalDeliveryRow(data);
}

class TotalDeliveryRow extends SupabaseDataRow {
  TotalDeliveryRow(super.data);

  @override
  SupabaseTable get table => TotalDeliveryTable();

  int? get totalDelivery => getField<int>('total_delivery');
  set totalDelivery(int? value) => setField<int>('total_delivery', value);
}
