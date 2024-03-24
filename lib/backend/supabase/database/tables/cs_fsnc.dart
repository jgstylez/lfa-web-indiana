import '../database.dart';

class CsFsncTable extends SupabaseTable<CsFsncRow> {
  @override
  String get tableName => 'cs_fsnc';

  @override
  CsFsncRow createRow(Map<String, dynamic> data) => CsFsncRow(data);
}

class CsFsncRow extends SupabaseDataRow {
  CsFsncRow(super.data);

  @override
  SupabaseTable get table => CsFsncTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get existingProgram => getField<String>('existing_program');
  set existingProgram(String? value) =>
      setField<String>('existing_program', value);

  String? get networkConnections => getField<String>('network_connections');
  set networkConnections(String? value) =>
      setField<String>('network_connections', value);

  bool? get hasDonated => getField<bool>('has_donated');
  set hasDonated(bool? value) => setField<bool>('has_donated', value);

  bool? get hasSold => getField<bool>('has_sold');
  set hasSold(bool? value) => setField<bool>('has_sold', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
