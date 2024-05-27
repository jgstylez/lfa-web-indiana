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

  List<String> get participation => getListField<String>('participation');
  set participation(List<String>? value) =>
      setListField<String>('participation', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get impactScore => getField<String>('impact_score');
  set impactScore(String? value) => setField<String>('impact_score', value);
}
