import '../database.dart';

class SenderWithMostDeliveriesTable
    extends SupabaseTable<SenderWithMostDeliveriesRow> {
  @override
  String get tableName => 'sender_with_most_deliveries';

  @override
  SenderWithMostDeliveriesRow createRow(Map<String, dynamic> data) =>
      SenderWithMostDeliveriesRow(data);
}

class SenderWithMostDeliveriesRow extends SupabaseDataRow {
  SenderWithMostDeliveriesRow(super.data);

  @override
  SupabaseTable get table => SenderWithMostDeliveriesTable();

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  int? get totalDeliveries => getField<int>('total_deliveries');
  set totalDeliveries(int? value) => setField<int>('total_deliveries', value);
}
