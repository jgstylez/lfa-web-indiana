import '../database.dart';

class CsSdhuTable extends SupabaseTable<CsSdhuRow> {
  @override
  String get tableName => 'cs_sdhu';

  @override
  CsSdhuRow createRow(Map<String, dynamic> data) => CsSdhuRow(data);
}

class CsSdhuRow extends SupabaseDataRow {
  CsSdhuRow(super.data);

  @override
  SupabaseTable get table => CsSdhuTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get ethnicity => getField<String>('ethnicity');
  set ethnicity(String? value) => setField<String>('ethnicity', value);

  bool? get isBipoc => getField<bool>('is_bipoc');
  set isBipoc(bool? value) => setField<bool>('is_bipoc', value);

  bool? get isSd => getField<bool>('is_sd');
  set isSd(bool? value) => setField<bool>('is_sd', value);

  bool? get isHu => getField<bool>('is_hu');
  set isHu(bool? value) => setField<bool>('is_hu', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
