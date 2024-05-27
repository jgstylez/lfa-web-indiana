import '../database.dart';

class TotalBillOfLadingsTable extends SupabaseTable<TotalBillOfLadingsRow> {
  @override
  String get tableName => 'total_bill_of_ladings';

  @override
  TotalBillOfLadingsRow createRow(Map<String, dynamic> data) =>
      TotalBillOfLadingsRow(data);
}

class TotalBillOfLadingsRow extends SupabaseDataRow {
  TotalBillOfLadingsRow(super.data);

  @override
  SupabaseTable get table => TotalBillOfLadingsTable();

  int? get totalBillOfLadings => getField<int>('total_bill_of_ladings');
  set totalBillOfLadings(int? value) =>
      setField<int>('total_bill_of_ladings', value);
}
