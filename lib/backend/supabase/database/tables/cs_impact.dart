import '../database.dart';

class CsImpactTable extends SupabaseTable<CsImpactRow> {
  @override
  String get tableName => 'cs_impact';

  @override
  CsImpactRow createRow(Map<String, dynamic> data) => CsImpactRow(data);
}

class CsImpactRow extends SupabaseDataRow {
  CsImpactRow(super.data);

  @override
  SupabaseTable get table => CsImpactTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get participation => getField<String>('participation');
  set participation(String? value) => setField<String>('participation', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
